from django.db import models

# Create your models here.
"""
CREATE TABLE [rules]( --??????? ?????
	id INT PRIMARY KEY IDENTITY(1,1),
	[name] NVARCHAR(40) NOT NULL,
	[level] INT NOT NULL
)"""
class Rules(models.Model):
	pass

class Topic(models.Model):
	pass

class Worker(models.Model):
	pass

class Files(models.Model):
	pass

class Tests(models.Model):
	pass

class Answers(models.Model):
	pass
class Lessond(models.Model):
	pass

class Subjects(models.Model):
	pass

class Progresstests(models.Model):
	pass

class Progresslesons(models.Model):
	pass


