from __future__ import absolute_import, unicode_literals

from urllib.request import urlopen

import requests
import time
import datetime
import wget
import json
import base64
from bs4 import BeautifulSoup

from celery import shared_task

from content.models import Event
from notifier.settings import MEDIA_ROOT
from django.core.files.base import ContentFile


@shared_task
def send_notifications():
    print('notifications successfully sent')


@shared_task
def get_and_add_new_events():
    # get_and_add_kudaGo_events()
    get_and_add_films_events()
    get_and_add_serials_events()
    print('events added')


def get_kudaGo_events_in_city(location):
    time1 = str(time.time())
    events = []
    url = "https://kudago.com/public-api/v1.4/events/?page_size=100&fields=title,description,place,location,dates," \
          "price,site_url,images&expand=place&order_by=&text_format=text&ids=&location=" + location + \
          "&actual_since=" + time1
    json_url = requests.get(url).json()
    res = json_url["results"]
    for i in res:
        try:
            events.append(correct_data(i))
        except KeyError:
            print('error')
            pass
    return events


def correct_data(event):
    cities = {"msk": "Москва", "spb": "Санкт-Петербург", "nsk": "Новосибирск", "ekb": "Екатеринбург",
              "nnv": "Нижний Новгород", "kzn": "Казань", "vbg": "Выборг", "smr": "Самара", "krd": "Краснадар",
              "sochi": "Сочи", "ufa": "Уфа", "krasnoyarsk": "Красноярск", "kev": "Киев", "new-york": "Нью-Йорк",
              "online": "Онлайн"}
    date_end = (event.setdefault("dates"))[-1]["start"]
    date_start = (event.setdefault("dates"))[0]["start"]
    if date_end <= 0:
        date_end = "Нет точной даты"
    else:
        date_end = (datetime.datetime.fromtimestamp(date_end)).strftime('%Y-%m-%d ')
    if date_start <= 0:
        date_start = "Нет точной даты"
    else:
        date_start = (datetime.datetime.fromtimestamp(date_start)).strftime('%Y-%m-%d ')
    if date_end != date_start:
        if date_end == "Нет точной даты":
            date = "Актуально с " + date_start
        elif date_start == "Нет точной даты":
            date = "Актуально до " + date_end
        else:
            date = "Актуально с " + date_start + " до " + date_end
    else:
        date = date_start
    place = event.setdefault("place")
    if place is not None:
        place = place["address"]
    if place is None:
        place = ''
    image = event["images"][0].setdefault("image")
    print(image)
    response = requests.get(image)
    image = ("data:" + str(response.headers['Content-Type']) + ';base64,' + base64.b64encode(response.content).decode(
        'utf-8'))
    format_, imgstr = str(image).split(';base64,')
    ext = format_.split('/')[-1]
    image = ContentFile(base64.b64decode(imgstr), name='temp.' + ext)

    location = event["location"]["slug"]

    return {"title": event.setdefault("title"), "place": place, "description": event.setdefault("description"),
            "image": image, "date": date, "city": cities[location]}


def get_kudaGo_events():
    cities = ["msk", "spb", "nsk", "ekb", "nnv", "kzn", "vbg", "smr",
              "krd", "sochi", "ufa", "krasnoyarsk", "kev", "new-york"]
    events = []
    for city in cities:
        events = events + get_kudaGo_events_in_city(city)
    filtered_event = []
    for event in events:
        if event not in filtered_event:
            filtered_event.append(event)
    return filtered_event


def get_and_add_kudaGo_events():
    events = get_kudaGo_events()
    for event in events:
        try:
            Event.objects.create(name=event['title'], place=event['city'] + ' ' + event['place'],
                                 description=event['description'], date=event['date'], image=event['image'])
        except Exception as e:
            print('kudaGo: ', e)


def IMDfilmInfo(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'lxml')
    inf = json.loads("".join(soup.find("script", {"type": "application/ld+json"}).contents))
    return inf


def get_films_events():
    url = 'https://www.imdb.com/calendar/?ref_=nv_mv_cal'
    response = requests.get(url)
    data = []
    correct_data = []
    soup = BeautifulSoup(response.text, 'lxml')
    for a in soup.find_all('a', href=True):
        if a['href'][0:6] == "/title":
            data.append(IMDfilmInfo("https://www.imdb.com/" + a['href']))
    for film in data:
        try:
            response = requests.get(film.setdefault("image"))
            film_image = ("data:" + str(response.headers['Content-Type']) + ';base64,' + base64.b64encode(
                response.content).decode('utf-8'))
            format_, imgstr = str(film_image).split(';base64,')
            ext = format_.split('/')[-1]
            film_image = ContentFile(base64.b64decode(imgstr), name='temp.' + ext)
        except Exception as e:
            print(e)
            continue
        correct_data.append({"title": film.setdefault("name"), "image": film_image,
                             "genre": film.setdefault("genre") if type(film.setdefault("genre")) != list else ",".join(
                                 film.setdefault("genre")), "description": film.setdefault("description"),
                             "date": film.setdefault("datePublished")})
    return correct_data


def get_and_add_films_events():
    films = get_films_events()
    for film in films:
        try:
            Event.objects.create(name=film['title'], image=film['image'], genres=film['genre'],
                                 description=film['description'], date=film['date'])
        except Exception as e:
            print('films: ', e)


def get_serials():
    url = "https://start.ru/series"
    response = requests.get(url).text
    soup = BeautifulSoup(response, "lxml")

    serials = []

    serials_name = soup.find_all("span", class_="VideoList_videoCatalog-title-alias__3_65h")
    serials_genre = soup.find_all("div", class_="VideoList_videoCatalog-title-genres__weqkJ")
    serials_image = soup.find_all("div", class_="VideoList_videoCatalog-item-image__1AMrH")

    for n in range(0, 16):
        d = {}
        d["title"] = serials_name[n].text
        d["date"] = ""
        d["genre"] = serials_genre[n].text.replace("\n", " ")
        d["description"] = ""
        d["image"] = serials_image[n].img["src"]

        try:
            response = requests.get(d['image'])
            d['image'] = ("data:" + str(response.headers['Content-Type']) + ';base64,' + base64.b64encode(
                response.content).decode('utf-8'))
            format_, imgstr = str(d['image']).split(';base64,')
            ext = format_.split('/')[-1]
            d['image'] = ContentFile(base64.b64decode(imgstr), name='temp.' + ext)
        except Exception as e:
            print(e)
            continue

        serials.append(d)
    return serials


def get_and_add_serials_events():
    serials = get_serials()
    for serial in serials:
        try:
            Event.objects.create(name=serial['title'], date=serial['date'], genres=serial['genre'],
                                 description=serial['description'], image=serial['image'])
        except Exception as e:
            print('serials: ', e)
