from django.urls import path

from content.views import ProfileView, EventsView, RetrieveEventView, SettingsView, EventsFriendsView

urlpatterns = [
    path('profiles/<int:pk>', ProfileView.as_view(), name='profile'),
    path('settings', SettingsView.as_view(), name='settings'),
    path('events/all', EventsView.as_view(), name='events'),
    path('events/friends', EventsFriendsView.as_view(), name='friends-events'),
    path('events/<int:pk>', RetrieveEventView.as_view(), name='retrieve-event'),
]
