from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('auth/', include('user_auth.urls')),
    path('api/', include('api.urls')),
    path('', include('content.urls')),
    path('', include('main.urls')),
    path('chat/', include('chats.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
