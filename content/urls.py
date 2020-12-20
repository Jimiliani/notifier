from django.urls import path

from content.views import ProfileView, EventsView, RetrieveEventView, SettingsView

urlpatterns = [
    path('profiles/<int:pk>', ProfileView.as_view(), name='profile'),
    path('settings', SettingsView.as_view(), name='settings'),
    path('events/list', EventsView.as_view(), name='events'),
    path('events/<int:pk>', RetrieveEventView.as_view(), name='retrieve-event'),
]
