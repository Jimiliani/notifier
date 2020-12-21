from __future__ import absolute_import, unicode_literals

import os

from celery import Celery
from celery.schedules import crontab

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'notifier.settings')

app = Celery('notifier')

app.config_from_object('django.conf:settings', namespace='CELERY')

app.conf.beat_schedule = {
    'send-notifications': {
        'task': 'content.tasks.send_notifications',
        # 'schedule': crontab(hour='*/12', minute=0)
        'schedule': crontab(hour='*', minute='*/10')
    },
    'get-and-add-new-events': {
        'task': 'content.tasks.get_and_add_new_events',
        # 'schedule': crontab(hour='*/4', minute=0)
        'schedule': crontab(hour='0', minute='0')
    }
}

app.autodiscover_tasks()
