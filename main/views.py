from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render
from django.views import View


class MainView(View):
    template_name = 'main/main.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)
