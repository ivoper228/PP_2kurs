from django.db import models

# Create your models here.
class Rules(models.Model):
	name = models.CharField(max_length=128)
	level = models.IntegerField()

	def __str__(self):
		return self.name

class Topic(models.Model):
	name = models.CharField(max_length=128)
	is_public = models.BooleanField()
	id_rule=models.ForeignKey(Rules, on_delete=models.CASCADE)
	def __str__(self):
		return self.name

class Worker(models.Model):
	name = models.CharField(max_length=128)
	fname = models.CharField(max_length=128)
	mail = models.EmailField()
	id_parent = models.ForeignKey('self', on_delete=models.CASCADE, null=True)
	id_rule = models.ForeignKey(Rules, on_delete=models.CASCADE)
	def __str__(self):
		return self.name +" "+self.fname

class Files(models.Model):
	id_worker = models.ForeignKey(Worker, on_delete=models.CASCADE)
	name = models.CharField(max_length=128)
	image = models.ImageField()
	def __str__(self):
		return self.name

class Tests(models.Model):
	id_topic = models.ForeignKey(Topic, on_delete=models.CASCADE)
	questions = models.TextField()
	def __str__(self):
		return self.questions

class Answers(models.Model):
	id_test = models.ForeignKey(Tests, on_delete=models.CASCADE)
	answer = models.TextField()
	istrue = models.BooleanField()
	def __str__(self):
		return self.answer
class Lesson(models.Model):
	id_topic = models.ForeignKey(Topic, on_delete=models.CASCADE)
	name = models.CharField(max_length=128)
	cont = models.TextField(null=True)
	def __str__(self):
		return self.name


class Subjects(models.Model):
	name = models.CharField(max_length=128)
	id_lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
	cont = models.TextField(null=True)
	image = models.ImageField(null=True)
	def __str__(self):
		return self.name

class Progresstests(models.Model):
	id_worker = models.ForeignKey(Worker, on_delete=models.CASCADE)
	id_test = models.ForeignKey(Tests, on_delete=models.CASCADE)
	status = models.BooleanField(null=True)
	def __str__(self):
		return self.id_test +" "+self.status

class Progresslesons(models.Model):
	id_worker = models.ForeignKey(Worker, on_delete=models.CASCADE)
	id_lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
	status = models.BooleanField(null=True)
	def __str__(self):
		return self.id_lesson +" "+self.status

class Invite(models.Model):
	id_worker = models.IntegerField( null=True)
	id_worker_parents = models.ForeignKey(Worker, on_delete=models.CASCADE)
	mail = models.EmailField()
	id_rules = models.ForeignKey(Rules, on_delete=models.CASCADE)
	urlgen = models.UUIDField()
	def __str__(self):
		return self.mail


