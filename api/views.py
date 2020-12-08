import json

from django.core.exceptions import ValidationError
from django.db.models import Count, Q
from django.shortcuts import get_object_or_404
from rest_framework import status
from rest_framework.generics import ListAPIView
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import GenericViewSet

from content.models import Profile, Event, Intent
from .permissions import IsProfileOwnerOrReadOnly, IsProfileOwner
from .serializers import ProfileSerializer, EventSerializer


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
        profile_pk = int(self.kwargs.get('pk', False))
        visited = self.request.GET.get('visited')
        return Event.objects.filter(intent__visited=visited, intent__profile_id=profile_pk)


class EventsByFriendsList(ListAPIView):
    serializer_class = EventSerializer
    permission_classes = [IsProfileOwner, ]

    def get_queryset(self):
        profile_pk = int(self.kwargs.get('pk', False))
        profile = get_object_or_404(Profile, id=profile_pk)
        if profile.vk_id is not None:
            friends = get_vk_friends(profile.vk_id)
            events_with_friends_intents = {}
            for friend in friends:
                pass
        else:
            raise ValidationError({'profile': ["В вашем профиле не указана ссылка на вашу страницу во вконтаке,"
                                               " поэтому данная функция для вас недоступна"]})


def get_vk_friends(vk_id):
    return list(vk_id)
