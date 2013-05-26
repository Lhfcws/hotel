from django.db import models

class City(models.Model):
	name = models.CharField(max_length=30)

class Hotel(models.Model):
	name = models.CharField(max_length=30)
	city = models.ForeignKey(City)

class Reserve(models.Model):
	information = models.CharField(max_length=50)
	hotel = models.ForeignKey(Hotel)
	time = models.DateField()

class Room(models.Model):
	reserve = models.ForeignKey(Reserve)
	date = models.DateField()
