from django.contrib.auth.models import User
from django.db.models.signals import post_save

from content.models import Profile


def create_profile(instance, created, **kwargs):
    if created:
        profile = Profile.objects.create(user=instance)
        profile.save()


post_save.connect(create_profile, sender=User)
