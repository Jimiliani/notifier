from django.contrib import admin

from .models import Profile, Event, Interest, Intent


class ProfileAdmin(admin.ModelAdmin):
    filter_horizontal = ['interests', ]


class EventAdmin(admin.ModelAdmin):
    filter_horizontal = ['tags', 'going_to_participate', ]


class IntentAdmin(admin.ModelAdmin):
    raw_id_fields = ['event', 'profile', ]


admin.site.register(Profile, ProfileAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(Intent, IntentAdmin)
admin.site.register(Interest)
