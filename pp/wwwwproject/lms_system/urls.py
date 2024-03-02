
from django.urls import path
from . import views

urlpatterns = [
    path('invate/<urlgen>', views.invate),
]
