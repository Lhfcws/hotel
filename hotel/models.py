from django.db import models
from django.db.models import Model

class City(Model):
	name = models.CharField(max_length=40)

class Customer(Model):
	name = models.CharField(max_length=40)
	email = models.EmailField()
	mobile = models.CharField(max_length=40)

class Hotel(Model):
	name = models.CharField(max_length=40)
	city = models.ForeignKey(City)
	description = models.TextField()

class Room(Model):
	hotel = models.ForeignKey(Hotel)
	roomtype = models.CharField(max_length=40)
	price = models.IntegerField()
	wifi = models.CharField(max_length=11)

class Reserve(Model):
	customer = models.ForeignKey(Customer)
	hotel = models.ForeignKey(Hotel)
	room = models.ForeignKey(Room)
	check_in_date = models.DateField()
	check_out_date = models.DateField()
	nights = models.IntegerField()
	cost = models.IntegerField()
	room_amount = models.IntegerField()
	adult_amount = models.IntegerField()
	children_amount = models.IntegerField()




