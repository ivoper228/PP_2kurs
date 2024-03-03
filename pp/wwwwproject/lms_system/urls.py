
from django.urls import path
from . import views

urlpatterns = [
    path('invate/lk/<urlgen>', views.lk, name='lk'),
    path('invate/<urlgen>', views.invate, name='topic'),
    path('invate/test/<urlgen>', views.test, name='test'),
]
