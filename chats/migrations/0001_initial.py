# Generated by Django 3.1.2 on 2020-11-13 13:46

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('content', '0002_event_looking_for_a_company'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='OneToOneRoom',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('room_name', models.CharField(max_length=128, unique=True, verbose_name='Код комнаты')),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='chat_rooms', to='content.event', verbose_name='Событие')),
                ('user1', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='one_to_one_rooms_as_user1', to=settings.AUTH_USER_MODEL, verbose_name='Собеседник 1')),
                ('user2', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='one_to_one_rooms_as_user2', to=settings.AUTH_USER_MODEL, verbose_name='Собеседник 2')),
            ],
        ),
    ]
