from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.views import View

from user_auth.forms import RegistrationForm


class RegistrationView(View):
    template_name = 'user_auth/registration.html'
    form_class = RegistrationForm

    def get(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            User.objects.create_user(username=form.cleaned_data['username'],
                                     email=form.cleaned_data['email'],
                                     password=form.cleaned_data['password1'],
                                     first_name=form.cleaned_data['first_name'],
                                     last_name=form.cleaned_data['last_name'])
            return redirect('userprofile:login')

        return render(request, self.template_name, {'form': form})
