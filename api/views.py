import json

from django.shortcuts import render, get_object_or_404
from rest_framework import permissions, status
from rest_framework.generics import ListAPIView
from rest_framework.mixins import ListModelMixin, CreateModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import GenericViewSet

from content.models import Profile, Event, Interest
from .permissions import IsProfileOwnerOrReadOnly
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
        interests_to_add = json.loads(request.POST['interests_to_add']) or []
        interests_to_remove = json.loads(request.POST['interests_to_remove']) or []
        ThroughModel = Profile.interests.through
        ThroughModel.objects.bulk_create([
            ThroughModel(profile_id=profile_pk, interest_id=interest) for interest in interests_to_add
        ])
        ThroughModel.objects.filter(profile_id=profile_pk, interest_id__in=interests_to_remove).delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


class ToggleProfileOnEvent(APIView):

    def post(self, request, event_pk, profile_pk, *args, **kwargs):
        profile = get_object_or_404(Profile, id=profile_pk)
        event = get_object_or_404(Event, id=event_pk)
        if event.going_to_participate.filter(id=profile_pk).exists():
            event.going_to_participate.remove(profile)
        else:
            event.going_to_participate.add(profile)
        return Response(status=status.HTTP_204_NO_CONTENT)
