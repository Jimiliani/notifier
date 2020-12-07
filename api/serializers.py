from django.contrib.auth.models import User
from rest_framework import serializers

from content.models import Profile, Event


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username', 'email']


class ProfileSerializer(serializers.ModelSerializer):
    user = UserSerializer(many=False, read_only=True)

    class Meta:
        model = Profile
        fields = '__all__'
        depth = 1


class ProfilePkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Profile
        fields = ['id', ]


class EventSerializer(serializers.ModelSerializer):
    going_to_participate = ProfilePkSerializer(many=True, read_only=True)

    class Meta:
        model = Event
        fields = '__all__'
