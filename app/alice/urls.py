from django.conf import settings
from django.contrib import admin
from django.urls import include, path

import app.todo.urls

urlpatterns = [
    path("", include(app.todo.urls)),
    path('admin/', admin.site.urls),
]
