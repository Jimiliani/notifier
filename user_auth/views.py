from django.core.mail import send_mail
from django.contrib.auth.models import User
from django.db import transaction
from django.shortcuts import render, redirect
from django.views import View
from django.contrib.auth import logout
from django.contrib.auth.decorators import login_required

from content.models import Profile
from user_auth.forms import RegistrationForm
from notifier.settings import EMAIL_HOST_USER


@login_required(login_url='/auth/login/')
def logout_view(request):
    logout(request)
    return redirect('/auth/login')


class RegistrationView(View):
    template_name = 'user_auth/registration.html'
    form_class = RegistrationForm

    def get(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            user = User.objects.create_user(username=form.cleaned_data['username'],
                                            email=form.cleaned_data['email'],
                                            password=form.cleaned_data['password1'])
            send_mail(
                'Notifier',
                'Привет {}! Спасибо за регистрацию на нашем сайте!'.format(form.cleaned_data['username']),
                EMAIL_HOST_USER,
                [form.cleaned_data['email'], ]
            )
            return redirect('login')
        return render(request, self.template_name, {'username': form.data['username'],
                                                    'email': form.data['email'],
                                                    'errors': form.errors})
