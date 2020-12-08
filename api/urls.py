from django.urls import path

from .views import ProfileView, EventViewSet, ToggleProfileOnEvent, EventsByVisitingList

urlpatterns = [
    path('profiles/<str:pk>', ProfileView.as_view({'get': 'retrieve',
                                                  'put': 'update'}), name='retrieve-update-profile'),
    path('events/<int:pk>', EventViewSet.as_view({'get': 'retrieve'}), name='retrieve-event'),
    path('events/<int:event_pk>/toggle_profile/<int:profile_pk>', ToggleProfileOnEvent.as_view(), name='toggle-profile'),
    path('events/list', EventViewSet.as_view({'get': 'list'}), name='list-events'),
    path('events_by_visiting/<int:profile_pk>', EventsByVisitingList.as_view(), name='list-events-by-visiting'),
]
