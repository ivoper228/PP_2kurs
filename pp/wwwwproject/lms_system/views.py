from django.shortcuts import render
from django.http import HttpResponse
from .models import *
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction

def invate(request, urlgen):

    try:
      m: Invite = Invite.objects.get(urlgen = urlgen)  # ObjectDoesNotExist
    except ObjectDoesNotExist:
        return render(request, "lms_system/404.html")

    if Worker.objects.filter(id = m.id_worker):
        return render(request, "lms_system/file.html", {'urlgen':urlgen})#заходит на страницу курса

    #try:
    #   with transaction.atomic():
    n: Worker = Worker()
    n.name = " "
    n.fname = " "
    n.mail = m.mail
    n.id_parent = m.id_worker_parents
    n.id_rule = Rules.objects.get(id=1)
    n.save()
    m.id_worker = n.pk
    m.save()
    #except IntegrityError:
    #    return render(request, "lms_system/404.html")


    return lk(request, urlgen)

def lk(request, urlgen):
    return render(request, "lms_system/lk.html",{'urlgen':urlgen})

