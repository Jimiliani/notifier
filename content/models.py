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
    interests = models.ManyToManyField('Interest', related_name='profiles', verbose_name='Интересы')
    gender = models.CharField(choices=GENDER_CHOICE, max_length=2, verbose_name='Пол')
    about = models.TextField(max_length=1000, verbose_name='О пользователе')
    vk_id = models.IntegerField(verbose_name='Идентификатор пользователя во вконтакте')
    inst_id = models.IntegerField(verbose_name='Идентификатор пользователя в инстаграме')


class Interest(models.Model):
    name = models.CharField(max_length=25)


class Event(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название')
    description = models.TextField(max_length=1000, verbose_name='Описание')
    date = models.DateTimeField(null=True, blank=True, verbose_name='Дата проведения')
    image = models.ImageField(upload_to='events', verbose_name='Изображение')
    tags = models.ManyToManyField('Interest', related_name='events', verbose_name='С какими интересами связано')
