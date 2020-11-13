from django.db import transaction
from django.db.models import Q
from django.http import HttpResponseForbidden, HttpResponse, JsonResponse
from django.shortcuts import render, get_object_or_404, redirect
import string
import random
import time

from django.views import View
from rest_framework import status
from rest_framework.response import Response

from chats.models import OneToOneRoom
from content.models import Event


def get_random_string():
    letters = string.ascii_letters
    result_str = ''.join(random.choice(letters) for i in range(64))
    print("Random string is:", result_str)
    return result_str


def index(request):
    return render(request, 'chats/index.html', {})


# план такой: сюда приходит запрос, если уже кто-то ждет того, чтобы начать общение, то создаем прям тут чат и
# редиректим пользователя, а если никто пока не ждет, то сами встаем в очередь, а в другой вьюшке уже с time.sleep()
# будем ждать того, чтобы кто-то появился


class PendingView(View):
    template_name = 'chats/waiting.html'

    def get(self, request, event_pk, *args, **kwargs):
        event = get_object_or_404(Event, id=event_pk)
        current_user_profile = request.user.profile
        if event.looking_for_a_company.exclude(id=current_user_profile.id).exists():
            companion = event.looking_for_a_company.exclude(id=current_user_profile.id).first()
            event.looking_for_a_company.remove(companion)
            room_name_ = get_random_string()
            OneToOneRoom.objects.create(event=event, user1_id=companion.id, user2_id=current_user_profile.id,
                                        room_name=room_name_)
            return redirect('room', event_pk=event.pk, room_name=room_name_)
        else:
            event.looking_for_a_company.add(request.user.profile)
        return render(request, self.template_name, {'event_pk': event_pk})

    def post(self, request, event_pk, *args, **kwargs):
        event = get_object_or_404(Event, id=event_pk)
        current_user_profile = request.user.profile
        event.looking_for_a_company.remove(current_user_profile)
        return HttpResponse("")


def waiting_for_entering_chat(request, event_pk):
    event = get_object_or_404(Event, id=event_pk)
    current_user_profile = request.user.profile
    if OneToOneRoom.objects.filter(Q(user1=current_user_profile) | Q(user2=current_user_profile),
                                   event=event).exists():
        room_ = OneToOneRoom.objects.get(Q(user1=current_user_profile) | Q(user2=current_user_profile), event=event)
        print('redirect')
        return JsonResponse({'success': True,
                             'event_pk': event.pk,
                             'room_name': room_.room_name})
    return JsonResponse({'success': False})


def room(request, event_pk, room_name):
    event = get_object_or_404(Event, id=event_pk)
    one_to_one_room = get_object_or_404(OneToOneRoom, room_name=room_name, event=event)
    current_user_profile = request.user.profile
    if current_user_profile != one_to_one_room.user1 and current_user_profile != one_to_one_room.user2:
        return HttpResponseForbidden()
    return render(request, 'chats/room.html', {
        'room_name': room_name
    })
