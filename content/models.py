from django.contrib.auth.models import User
from django.db import models


class Profile(models.Model):
    MALE = 'M'
    FEMALE = 'F'
    OTHER = 'O'
    GENDER_CHOICE = [
        (MALE, 'Male'),
        (FEMALE, 'Female'),
        (OTHER, 'Other'),
    ]
    user = models.OneToOneField(User, related_name='profile', verbose_name='Пользователь', on_delete=models.CASCADE)
    interests = models.ManyToManyField('Interest', related_name='profiles', verbose_name='Интересы')
    gender = models.CharField(choices=GENDER_CHOICE, max_length=2, verbose_name='Пол', null=True, blank=True)
    about = models.TextField(max_length=1000, verbose_name='О пользователе', null=True, blank=True)
    vk_id = models.IntegerField(verbose_name='Идентификатор пользователя во вконтакте', null=True)
    inst_id = models.IntegerField(verbose_name='Идентификатор пользователя в инстаграме', null=True)

    def __str__(self):
        return self.user.username


class Interest(models.Model):
    name = models.CharField(max_length=25)

    def __str__(self):
        return self.name


class Intent(models.Model):
    event = models.OneToOneField('Event', related_name='intent', on_delete=models.CASCADE, verbose_name='Событие')
    profile = models.OneToOneField('Profile', related_name='intent', on_delete=models.CASCADE, verbose_name='Профиль')
    visited = models.BooleanField(default=False, verbose_name='Уже посещено')

    def __str__(self):
        return str(self.profile) + ' ' + str(self.event)


class Event(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название')
    description = models.TextField(max_length=1000, verbose_name='Описание')
    date = models.DateTimeField(verbose_name='Дата проведения')
    place = models.CharField(verbose_name='Место проведения', max_length=100, null=True, blank=True)
    image = models.ImageField(upload_to='events', verbose_name='Изображение')
    tags = models.ManyToManyField('Interest', related_name='events', verbose_name='Связанные интересы')
    going_to_participate = models.ManyToManyField('Profile', related_name='going_to_participate',
                                                  verbose_name='Собираются учавствовать', through='Intent', blank=True)
    looking_for_a_company = models.ManyToManyField('Profile', related_name='looking_for_a_company_to',
                                                   verbose_name='Ищут компанию', blank=True)

    def __str__(self):
        return self.name
