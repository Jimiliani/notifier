from django.urls import path

from .views import ProfileView, EventViewSet, ToggleProfileOnEvent, EventsByVisitingList, EventsByFriendsList, \
    ToggleIntent

urlpatterns = [
    path('profiles/<str:profile_pk>', ProfileView.as_view({'get': 'retrieve',
                                                           'post': 'update'}), name='retrieve-update-profile'),
    path('events/<int:pk>', EventViewSet.as_view({'get': 'retrieve'}), name='retrieve-event'),
    path('events/<int:event_pk>/toggle_profile/<int:profile_pk>', ToggleProfileOnEvent.as_view(),
         name='toggle-profile'),
    path('events/list', EventViewSet.as_view({'get': 'list'}), name='list_events'),
    path('events/<int:profile_pk>/visiting', EventsByVisitingList.as_view(), name='list-events-by-visiting'),
    path('events/<int:profile_pk>/friends', EventsByFriendsList.as_view(), name='list-events-by-visiting'),
    path('intent', ToggleIntent.as_view(), name='toggle-intent')
]
