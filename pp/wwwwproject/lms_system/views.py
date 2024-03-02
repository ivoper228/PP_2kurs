from django.shortcuts import render
from django.http import HttpResponse
from .models import Invite
from django.core.exceptions import ObjectDoesNotExist

def invate(request, urlgen):

    try:
        m = Invite.objects.get(urlgen = urlgen)  # ObjectDoesNotExist
    except ObjectDoesNotExist:
        return render(request, "lms_system/404.html")
    return render(request, "lms_system/file.html")

