import json

import requests
from django.core.exceptions import ValidationError
from django.shortcuts import get_object_or_404
from django.conf import settings

from rest_framework import status
from rest_framework.generics import ListAPIView
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import GenericViewSet

from content.models import Profile, Event, Intent
from notifier import settings
from .permissions import IsProfileOwnerOrReadOnly, IsProfileOwner
from .serializers import ProfileSerializer, EventSerializer

from content.tasks import get_and_add_kudaGo_events


class ProfileView(GenericViewSet, RetrieveModelMixin, UpdateModelMixin):
    serializer_class = ProfileSerializer
    queryset = Profile.objects.all()
    permission_classes = [IsProfileOwnerOrReadOnly, ]

    def get_object(self):
        pk = self.kwargs.get('profile_pk', None)
        try:
            pk = int(pk)
            return get_object_or_404(Profile, pk=pk)
        except ValueError:
            if pk == 'me':
                return self.request.user.profile
            else:
                raise ValidationError({'profile_pk': ["Invalid 'pk' value"]})


class EventViewSet(GenericViewSet, ListModelMixin, RetrieveModelMixin):
    serializer_class = EventSerializer
    queryset = Event.objects.all()


class ToggleProfileOnEvent(APIView):

    def post(self, request, event_pk, profile_pk, *args, **kwargs):
        profile = get_object_or_404(Profile, id=profile_pk)
        event = get_object_or_404(Event, id=event_pk)
        if event.going_to_participate.filter(id=profile_pk).exists():
            Intent.objects.filter(event=event, profile=profile).delete()
        else:
            Intent.objects.create(event=event, profile=profile)
        return Response(status=status.HTTP_204_NO_CONTENT)


class EventsByVisitingList(ListAPIView):
    serializer_class = EventSerializer
    permission_classes = [IsProfileOwner, ]

    def get_queryset(self):
        profile_pk = int(self.kwargs.get('profile_pk', False))
        visited = self.request.GET.get('visited')
        return Event.objects.filter(intent__visited=visited, intent__profile_id=profile_pk)


class EventsByFriendsList(ListAPIView):
    serializer_class = EventSerializer
    permission_classes = [IsProfileOwner, ]

    def get_vk_friends(self, vk_id):
        parameters = {
            'access_token': settings.VK_ACCESS_TOKEN,
            'user_id': vk_id,
            'order': 'hints',
            'v': settings.VK_API_VERSION
        }
        response = requests.get(settings.VK_GET_FRIENDS_URL, params=parameters)
        vk_ids = list(response.json()['response']['items'])
        profiles = Profile.objects.filter(vk_id__in=vk_ids)
        return profiles

    def get_queryset(self):
        profile_pk = int(self.kwargs.get('profile_pk', False))
        profile = get_object_or_404(Profile, id=profile_pk)
        if profile.vk_id is not None:
            friends = self.get_vk_friends(profile.vk_id)
            events_with_friends_intents = Event.objects.filter(going_to_participate__in=friends)
            return events_with_friends_intents
        else:
            raise ValidationError({'profile': ["В вашем профиле не указана ссылка на вашу страницу во вконтаке,"
                                               " поэтому данная функция для вас недоступна"]})


class ToggleIntent(APIView):
    def get(self, request):
        event_id = int(request.GET.get('event_id'))
        profile_id = int(request.user.profile.id)
        if Intent.objects.filter(event_id=event_id, profile_id=profile_id).exists():
            Intent.objects.filter(event_id=event_id, profile_id=profile_id).get().delete()
        else:
            Intent.objects.create(event_id=event_id, profile_id=profile_id)
        return Response(status=status.HTTP_200_OK)
