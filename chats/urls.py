from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('event/<int:event_pk>/pending/', views.PendingView.as_view(), name='pending'),
    path('event/<int:event_pk>/wait/', views.waiting_for_entering_chat, name='waiting'),
    path('event/<int:event_pk>/room/<str:room_name>/', views.room, name='room'),
]
