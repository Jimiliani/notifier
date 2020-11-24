import json

from django.db.models import Count, Q
from django.shortcuts import get_object_or_404
from rest_framework import status
from rest_framework.generics import ListAPIView
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import GenericViewSet

from content.models import Profile, Event, Interest, Intent
from .permissions import IsProfileOwnerOrReadOnly, IsProfileOwner
from .serializers import ProfileSerializer, InterestSerializer, EventSerializer


class ProfileView(GenericViewSet, RetrieveModelMixin, UpdateModelMixin):
    serializer_class = ProfileSerializer
    queryset = Profile.objects.all()
    permission_classes = [IsProfileOwnerOrReadOnly, ]


class EventView(GenericViewSet, ListModelMixin, RetrieveModelMixin):
    serializer_class = EventSerializer
    queryset = Event.objects.all()


class InterestView(ListAPIView):
    serializer_class = InterestSerializer
    queryset = Interest.objects.all()


class ToggleInterestsOnProfile(APIView):

    def post(self, request, profile_pk, *args, **kwargs):
        profile = get_object_or_404(Profile, pk=profile_pk)
        profile.interests.clear()
        interests = json.loads(request.POST['interests']) or []
        for interest_id in interests:
            interest = Interest.objects.get_or_create(id=interest_id)[0]
            profile.interests.add(interest)
        return Response(status=status.HTTP_204_NO_CONTENT)


class ToggleProfileOnEvent(APIView):

    def post(self, request, event_pk, profile_pk, *args, **kwargs):
        profile = get_object_or_404(Profile, id=profile_pk)
        event = get_object_or_404(Event, id=event_pk)
        if event.going_to_participate.filter(id=profile_pk).exists():
            Intent.objects.filter(event=event, profile=profile).delete()
        else:
            Intent.objects.create(event=event, profile=profile)
        return Response(status=status.HTTP_204_NO_CONTENT)


class EventsByVisitingView(ListAPIView):
    serializer_class = EventSerializer
    permission_classes = [IsProfileOwner, ]

    def get_queryset(self):
        profile_pk = int(self.kwargs.get('profile_pk', False))
        visited = self.request.GET.get('visited')
        return Event.objects.filter(intent__visited=visited, intent__profile_id=profile_pk)


class RecommendedEventsView(ListAPIView):
    serializer_class = EventSerializer

    def get_queryset(self):
        profile_pk = int(self.kwargs.get('profile_pk', False))
        interests = get_object_or_404(Profile, pk=profile_pk).interests.values('id')
        return Event.objects.annotate(
            recommendations=Count('tags', filter=Q(tags__in=interests))
        ).order_by('-recommendations')
