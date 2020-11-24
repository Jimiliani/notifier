from celery import Celery
from celery.schedules import crontab
from django.contrib.auth.models import User
from django.core.mail import send_mail

from notifier.settings import EMAIL_HOST_USER

app = Celery()


@app.task
def send_scheduled_email():
    emails = User.objects.values_list('email', flat=True).distinct('email').exclude(email='')
    send_mail(
        'Notifier',
        'Привет, это ежесекундная рассылка спама от Димы Королева!',
        EMAIL_HOST_USER,
        list(emails)
    )
    print(emails)
    print(list(emails))
    print('email sent')
