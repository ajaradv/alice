from django.conf import settings
from django.contrib import admin
from django.urls import include, path

import app.todo.urls

urlpatterns = [
    path("__reload__/", include("django_browser_reload.urls")),
    path("", include(app.todo.urls)),
    path('admin/', admin.site.urls),
]
