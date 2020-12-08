from django.urls import path

from content.views import ProfileView, EventsView

urlpatterns = [
    path('profiles/', ProfileView.as_view(), name='profile'),
    path('events/', EventsView.as_view(), name='events'),
]
