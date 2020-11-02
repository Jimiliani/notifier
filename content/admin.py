from django.contrib import admin

from .models import Profile, Event, Interest


class ProfileAdmin(admin.ModelAdmin):
    filter_horizontal = ['interests', ]


class EventAdmin(admin.ModelAdmin):
    filter_horizontal = ['tags', ]


admin.site.register(Profile, ProfileAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(Interest)
