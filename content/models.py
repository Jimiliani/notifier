from django.contrib.auth.models import User
from django.db import models


class Profile(models.Model):
    GENDER_CHOICE = [
        ('M', 'Мужчина'),
        ('F', 'Женщина'),
        ('O', 'Другое'),
    ]
    user = models.OneToOneField(User, related_name='profile', verbose_name='Пользователь', on_delete=models.CASCADE)
    gender = models.CharField(choices=GENDER_CHOICE, max_length=2, verbose_name='Пол', null=True, blank=True)
    about = models.TextField(max_length=1000, verbose_name='О пользователе', null=True, blank=True)
    vk_link = models.CharField(verbose_name='Ссылка на профиль пользователя во вконтакте', null=True, blank=True,
                               max_length=50)
    vk_id = models.PositiveIntegerField(verbose_name='id пользователя во вконтакте', null=True, blank=True,
                                        help_text='Необходимо выставить вручную, если выставляется через админку')

    def __str__(self):
        return self.user.username


class Intent(models.Model):
    event = models.OneToOneField('Event', related_name='intent', on_delete=models.CASCADE, verbose_name='Событие')
    profile = models.OneToOneField('Profile', related_name='intent', on_delete=models.CASCADE, verbose_name='Профиль')
    visited = models.BooleanField(default=False, verbose_name='Уже посещено')

    def __str__(self):
        return str(self.profile) + ' ' + str(self.event)


class Event(models.Model):
    name = models.CharField(max_length=100, verbose_name='Название', unique=True)
    description = models.TextField(max_length=1000, verbose_name='Описание', null=True, blank=True)
    date = models.CharField(verbose_name='Дата проведения', max_length=50, null=True, blank=True)
    place = models.CharField(verbose_name='Место проведения', max_length=200, null=True, blank=True)
    image = models.ImageField(upload_to='events', verbose_name='Изображение', null=True, blank=True)
    genres = models.CharField(max_length=200, null=True, blank=True)
    going_to_participate = models.ManyToManyField('Profile', related_name='going_to_participate',
                                                  verbose_name='Собираются учавствовать', through='Intent', blank=True)
    looking_for_a_company = models.ManyToManyField('Profile', related_name='looking_for_a_company_to',
                                                   verbose_name='Ищут компанию', blank=True)

    def __str__(self):
        return self.name
