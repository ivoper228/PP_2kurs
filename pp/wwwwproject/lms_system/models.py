from django.db import models

# Create your models here.
class Rules(models.Model):
	name = models.CharField(max_length=128)
	level = models.IntegerField

class Topic(models.Model):
	name = models.CharField(max_length=128)
	is_public = models.BooleanField
	id_rule=models.ForeignKey(Rules, on_delete=models.CASCADE)

class Worker(models.Model):
	name = models.CharField(max_length=128)
	fname = models.CharField(max_length=128)
	mail = models.EmailField
	id_parent = models.ForeignKey('self', on_delete=models.CASCADE)
	id_rule = models.ForeignKey(Rules, on_delete=models.CASCADE)

class Files(models.Model):
	id_worker = models.ForeignKey(Worker, on_delete=models.CASCADE)
	name = models.CharField(max_length=128)
	image = models.ImageField

class Tests(models.Model):
	id_topic = models.ForeignKey(Topic, on_delete=models.CASCADE)
	questions = models.TextField

class Answers(models.Model):
	id_test = models.ForeignKey(Tests, on_delete=models.CASCADE)
	answer = models.TextField
	istrue = models.BooleanField
class Lesson(models.Model):
	id_topic = models.ForeignKey(Topic, on_delete=models.CASCADE)
	name = models.CharField(max_length=128)
	cont = models.TextField(null=True)


class Subjects(models.Model):
	id_lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
	cont = models.TextField(null=True)
	image = models.ImageField(null=True)

class Progresstests(models.Model):
	id_worker = models.ForeignKey(Worker, on_delete=models.CASCADE)
	id_test = models.ForeignKey(Tests, on_delete=models.CASCADE)
	status = models.BooleanField(null=True)

class Progresslesons(models.Model):
	id_worker = models.ForeignKey(Worker, on_delete=models.CASCADE)
	id_lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
	status = models.BooleanField(null=True)

class Invite(models.Model):
	id_worker = models.ForeignKey(Worker, on_delete=models.CASCADE, null=True)
	id_worker_parents = models.ForeignKey(Worker, on_delete=models.CASCADE)
	mail = models.EmailField
	id_rules = models.ForeignKey(Rules, on_delete=models.CASCADE)
	urlgen = models.UUIDField


