from django.urls import path

from content.views import ProfileView, EventsView, RetrieveEventView

urlpatterns = [
    path('profiles/<int:pk>', ProfileView.as_view(), name='profile'),
    path('events/list', EventsView.as_view(), name='events'),
    path('events/<int:pk>', RetrieveEventView.as_view(), name='retrieve-event'),
]
