# Generated by Django 3.1.2 on 2020-12-11 06:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('content', '0009_auto_20201209_0021'),
    ]

    operations = [
        migrations.AddField(
            model_name='event',
            name='genres',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='event',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='events', verbose_name='Изображение'),
        ),
        migrations.AlterField(
            model_name='event',
            name='name',
            field=models.CharField(max_length=100, unique=True, verbose_name='Название'),
        ),
    ]
