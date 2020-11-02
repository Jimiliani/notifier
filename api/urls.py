from django.urls import path

from .views import ProfileView, EventView, InterestView, ToggleInterestsOnProfile, ToggleProfileOnEvent

urlpatterns = [
    path('profile/<int:pk>', ProfileView.as_view({'get': 'retrieve',
                                                  'post': 'update'}), name='retrieve-update-profile'),
    path('profile/<int:profile_pk>/toggle_interests', ToggleInterestsOnProfile.as_view(), name='toggle-interests'),
    path('interests', InterestView.as_view(), name='list-interests'),
    path('event/<int:pk>', EventView.as_view({'get': 'retrieve'}), name='retrieve-event'),
    path('event/<int:event_pk>/toggle_profile/<int:profile_pk>', ToggleProfileOnEvent.as_view(), name='toggle-profile'),
    path('events', EventView.as_view({'get': 'list'}), name='list-events'),
]
