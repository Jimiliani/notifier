import json

import requests
from django.conf import settings
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
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

    def update(self, instance, validated_data):
        profile = super(ProfileSerializer, self).update(instance, validated_data)
        if validated_data.get('vk_link', '') is not '':
            try:
                vk_short_name = validated_data.get('vk_link').split('/')[-1]
                parameters = {
                    'access_token': settings.VK_ACCESS_TOKEN,
                    'user_ids': vk_short_name,
                    'v': settings.VK_API_VERSION
                }
                response = requests.get(settings.VK_GET_USER_URL, params=parameters)
                profile.vk_id = response.json()['response'][0]['id']
            except Exception:
                raise ValidationError({'Ссылка на страницу вк': "Некорректный формат ссылки"})
        profile.save()
        return profile


class ProfilePkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Profile
        fields = ['id', ]


class EventSerializer(serializers.ModelSerializer):
    going_to_participate = ProfilePkSerializer(many=True, read_only=True)

    class Meta:
        model = Event
        fields = '__all__'
