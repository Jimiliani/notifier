from django.urls import path

from .views import ProfileView, EventView, ToggleProfileOnEvent, EventsByVisitingView

urlpatterns = [
    path('profile/<int:pk>', ProfileView.as_view({'get': 'retrieve',
                                                  'post': 'update'}), name='retrieve-update-profile'),
    path('event/<int:pk>', EventView.as_view({'get': 'retrieve'}), name='retrieve-event'),
    path('event/<int:event_pk>/toggle_profile/<int:profile_pk>', ToggleProfileOnEvent.as_view(), name='toggle-profile'),
    path('event/list', EventView.as_view({'get': 'list'}), name='list-events'),
    path('events_by_visiting/<int:profile_pk>', EventsByVisitingView.as_view(), name='list-events-by-visiting'),
]
