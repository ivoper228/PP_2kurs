
from django.urls import path
from . import views

urlpatterns = [
    path('invate/lk/<urlgen>', views.invate, name='lk'),
    path('invate/<urlgen>', views.lk, name='topic'),
]
