from django.contrib.auth.models import User
from django.db import models

from content.models import Event, Profile


class OneToOneRoom(models.Model):
    user1 = models.ForeignKey(Profile, null=True, on_delete=models.CASCADE, related_name='one_to_one_rooms_as_user1',
                              verbose_name='Собеседник 1')
    user2 = models.ForeignKey(Profile, null=True, on_delete=models.CASCADE, related_name='one_to_one_rooms_as_user2',
                              verbose_name='Собеседник 2')
    room_name = models.CharField(max_length=128, unique=True, verbose_name='Код комнаты')
    event = models.ForeignKey(Event, on_delete=models.CASCADE, related_name='chat_rooms', verbose_name='Событие')
