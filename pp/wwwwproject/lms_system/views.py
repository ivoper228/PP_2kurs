from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import *
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction
from .forms import *

def invate(request, urlgen):
    try:
      m: Invite = Invite.objects.get(urlgen = urlgen)  # ObjectDoesNotExist
    except ObjectDoesNotExist:
        return render(request, "lms_system/404.html")

    if not(Worker.objects.filter(id = m.id_worker)):
        # try:
        #   with transaction.atomic():
        # except IntegrityError:
        #    return render(request, "lms_system/404.html")
        n: Worker = Worker()
        n.name = " "
        n.fname = " "
        n.mail = m.mail
        n.id_parent = m.id_worker_parents
        n.id_rule = Rules.objects.get(id=1)
        n.save()
        m.id_worker = n.pk
        m.save()


        topic = Topic.objects.filter(id_rule=m.id_rules)
        print (topic)

        for i in topic:

            lesson: Lesson = Lesson.objects.filter(id_topic=i.pk)

            print(lesson)

            for j in lesson:
                progl: Progresslesons = Progresslesons()
                progl.id_worker =  n
                progl.id_lesson = j
                progl.status = True
                progl.save()

            test: Tests = Tests.objects.filter(id_topic=i.pk)

            for j in test:
                progt: Progresstests = Progresstests()
                progt.id_worker =  n
                progt.id_test = j
                progt.status = False
                progt.save()

        return lk(request, urlgen)

    dict_topic = {}

    progrsl = Progresslesons.objects.filter(id_worker = m.id_worker)

    i: Progresslesons
    for i  in progrsl:
        l = i.id_lesson
        t = l.id_topic

        if t in dict_topic:
            dict_less = dict_topic[t].values()
        else:
            dict_less = {}

        subject: Subjects = Subjects.objects.filter(id_lesson = l.pk)
        sub = []
        for k in subject:
            sub.append(k)

        dict_less[l] = sub
        dict_topic[t] = dict_less



    return render(request, "lms_system/file.html", {'topic': dict_topic, 'urlgen':urlgen})#заходит на страницу курса

def test(request, urlgen):
    flag = True
    try:
      m: Invite = Invite.objects.get(urlgen = urlgen)  # ObjectDoesNotExist
    except ObjectDoesNotExist:
        return render(request, "lms_system/404.html")

    if not (Worker.objects.filter(id=m.id_worker)):
        invate(request, urlgen)

    if (request.method=="POST"):
        q_id = request.POST.get('quest')

        test = Tests.objects.get(id = q_id)

        if test:

            answers = Answers.objects.filter(id_test=test)

            flag = False

            for a in answers:
                print(a)

                flag = False

                if a.istrue:
                    print(' '.join(request.POST))
                    if ("answer_" + str(a.id)) in request.POST:
                        flag = True
                else:
                    if "answer_" + str(a.id) not in request.POST:
                       flag = True
                if not flag:
                    break
            if flag:
                tests = Progresstests.objects.filter(status=False, id_worker=m.id_worker, id_test=test)[:1]
                if tests:
                    tests[0].status = True
                    tests[0].save()


    tests = Progresstests.objects.filter(status=False, id_worker=m.id_worker)[:1]

    if tests:

        t = tests[0].id_test
        p = Answers.objects.filter(id_test = t)

        form = TestForms()
        cont = {'urlgen': urlgen,
                'answer':p,
                'tests':t,
                'flag':flag,

                }

        return render(request, "lms_system/test.html", cont)  # заходит на страницу курса
    else:
        return render(request, "lms_system/test1.html", {'urlgen':urlgen})#заходит на страницу курса





def lk(request, urlgen):

    flag = True
    try:
      m: Invite = Invite.objects.get(urlgen = urlgen)  # ObjectDoesNotExist
    except ObjectDoesNotExist:
        return render(request, "lms_system/404.html")


    err = ''
    w = Worker.objects.get(id=m.id_worker)
    if not w:
        return render(request, "lms_system/404.html")

    if (request.method == "POST"):
        form = WorkerForms(request.POST, instance=w)
        if form.is_valid():
            form.save()
            return redirect('topic',urlgen)
        else:
            err="Неверно заполнена форма"

    form = WorkerForms(instance=w)

    cont = {
        'urlgen': urlgen,
        'form': form,
        'err':err
    }
    return render(request, "lms_system/lk.html",cont)



