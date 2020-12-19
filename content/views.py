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


class EventsView(LoginRequiredMixin, View):
    template_name = 'content/events.html'
    login_url = '/auth/login'

    def get(self, request, *args, **kwargs):
        events = Event.objects.all()
        return render(request, self.template_name, {'events': events})


class RetrieveEventView(LoginRequiredMixin, View):
    template_name = 'content/one_event.html'
    login_url = '/auth/login'

    def get(self, request, pk, *args, **kwargs):
        event = Event.objects.get(pk=pk)
        is_user_going_to_participate = Intent.objects.filter(event=event, profile=request.user.profile).exists()
        return render(request, self.template_name, {'event': event,
                                                    'is_user_going_to_participate': is_user_going_to_participate})
