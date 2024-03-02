from django.db import models

# Create your models here.
"""
CREATE TABLE lessons( --??????? ??????
	id INT PRIMARY KEY  IDENTITY(1,1), 
	id_topic INT CONSTRAINT FK_TOPIC_LESSONS REFERENCES topic(id),
	[name] NVARCHAR(40) NOT NULL,
	answer TEXT NOT NULL,
	istrue BIT NOT NULL
)"""
class Rules(models.Model):
	name = models.CharField(max_length=128)
	level = models.IntegerField

class Topic(models.Model):
	name = models.CharField(max_length=128)
	is_public = models.BinaryField
	id_rule=models.ForeignKey(Rules)

class Worker(models.Model):
	name = models.CharField(max_length=128)
	fname = models.CharField(max_length=128)
	id_parent = models.ForeignKey(self)
	id_rule = models.ForeignKey(Rules)

class Files(models.Model):
	id_worker = models.ForeignKey(Worker)
	image = models.ImageField

class Tests(models.Model):
	id_topic = models.ForeignKey(Topic)
	questions = models.TextField

class Answers(models.Model):
	id_test = models.ForeignKey(Tests)
	answer = models.TextField
	istrue = models.BinaryField
class Lesson(models.Model):
	id_topic = models.ForeignKey(Topic)
	name = models.CharField(max_length=128)
	answer = models.TextField
	istrue = models.BinaryField

class Subjects(models.Model):
	id_lesson = models.ForeignKey(Lesson)
	name = models.CharField(max_length=128)
	answer = models.TextField
	image = models.ImageField

class Progresstests(models.Model):
	id_worker = models.ForeignKey(Worker)
	id_test = models.ForeignKey(Tests)
	status = models.BooleanField(null=True)

class Progresslesons(models.Model):
	id_worker = models.ForeignKey(Worker)
	id_test = models.ForeignKey(Lesson)
	status = models.BooleanField(null=True)


