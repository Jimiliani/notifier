import requests
from django.conf import settings
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render, get_object_or_404
from django.views import View

from content.models import Event, Intent, Profile


class ProfileView(LoginRequiredMixin, View):
    template_name = 'content/profile.html'
    login_url = '/auth/login'

    def get(self, request, pk, *args, **kwargs):
        profile = get_object_or_404(Profile, pk=pk)
        return render(request, self.template_name, {'profile': profile})


class SettingsView(LoginRequiredMixin, View):
    template_name = 'content/settings.html'
    login_url = '/auth/login'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)


class EventsView(LoginRequiredMixin, View):
    template_name = 'content/events.html'
    login_url = '/auth/login'

    def get(self, request, *args, **kwargs):
        events = Event.objects.all()
        return render(request, self.template_name, {'events': events})


class EventsFriendsView(LoginRequiredMixin, View):
    template_name = 'content/friends.html'
    login_url = '/auth/login'

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

    def get(self, request, *args, **kwargs):
        profile = request.user.profile
        if profile.vk_id is not None:
            try:
                friends = self.get_vk_friends(profile.vk_id)
                events_with_friends_intents = Event.objects.filter(going_to_participate__in=friends)
                return render(request, self.template_name, {'events': events_with_friends_intents})
            except Exception:
                return render(request, self.template_name, {'error': "Что-то пошло не так, попробуйте позже"})
        return render(request, self.template_name, {'error': "В вашем профиле не указана ссылка на вашу страницу"
                                                             " вконтакте, так что эта функция для вас недоступна"})


class RetrieveEventView(LoginRequiredMixin, View):
    template_name = 'content/one_event.html'
    login_url = '/auth/login'

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

    def get(self, request, pk, *args, **kwargs):
        profile = request.user.profile
        event = Event.objects.get(pk=pk)
        is_user_going_to_participate = Intent.objects.filter(event=event, profile=request.user.profile).exists()
        if profile.vk_id is not None:
            try:
                friends = self.get_vk_friends(profile.vk_id)
                friends_going_to_participate = Profile.objects.prefetch_related(
                    'intent').filter(intent__event=event, intent__profile__in=friends)
                print(friends_going_to_participate)
                print(friends_going_to_participate.count())
            except Exception:
                friends_going_to_participate = Profile.objects.none()
        else:
            friends_going_to_participate = Profile.objects.none()
        return render(request, self.template_name, {'event': event,
                                                    'is_user_going_to_participate': is_user_going_to_participate,
                                                    'friends_going_to_participate': friends_going_to_participate})
