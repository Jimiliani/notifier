from django.shortcuts import render
from django.views import View


class ProfileView(View):
    template_name = 'content/profile.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)


class EventsView(View):
    template_name = 'content/events.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)
