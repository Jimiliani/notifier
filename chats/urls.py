from django.urls import path

from . import views

urlpatterns = [
    path('events/<int:event_pk>/pending/', views.PendingView.as_view(), name='pending'),
    path('events/<int:event_pk>/wait/', views.waiting_for_entering_chat, name='waiting'),
    path('events/<int:event_pk>/room/<str:room_name>/', views.room, name='room'),
]
