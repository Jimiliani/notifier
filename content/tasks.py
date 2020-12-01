from __future__ import absolute_import, unicode_literals

from celery import shared_task

import time


@shared_task
def send_notifications():
    print('notifications successfully sent')


@shared_task
def get_and_add_new_events():
    print('events added')


@shared_task
def send_recommendations():
    print('recommendations sent')
