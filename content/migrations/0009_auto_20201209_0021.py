# Generated by Django 3.1.2 on 2020-12-08 21:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('content', '0008_auto_20201209_0000'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='gender',
            field=models.CharField(blank=True, choices=[('M', 'Мужчина'), ('F', 'Женщина'), ('O', 'Другое')], max_length=2, null=True, verbose_name='Пол'),
        ),
    ]