from django.contrib import admin

from .models import Profile, Event, Intent


class EventAdmin(admin.ModelAdmin):
    filter_horizontal = ['going_to_participate', ]


class IntentAdmin(admin.ModelAdmin):
    raw_id_fields = ['event', 'profile', ]


admin.site.register(Profile)
admin.site.register(Event, EventAdmin)
admin.site.register(Intent, IntentAdmin)
