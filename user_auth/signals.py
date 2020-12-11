from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver

from content.models import Profile


@receiver(post_save, sender=User)
def create_profile(instance, created, **kwargs):
    if created:
        profile = Profile.objects.create(user=instance)
        profile.save()
