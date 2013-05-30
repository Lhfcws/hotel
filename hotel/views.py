#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

from django.template import Context
from django.shortcuts import render_to_response
from django.http import HttpResponseRedirect

from models import *


def index(request):
	return render_to_response('index.html', {})

def stupid(request):
	cl = City.objects.all()
	return render_to_response('stupid.html', {'city_list':cl})

def choose(request):
	cl = City.objects.filter(name__contains=request.POST['find'])
	print len(cl)
	if len(cl) == 0:
		return HttpResponseRedirect('/stupid')
	else:
		pass
	hotel_list = None
	for c in cl:
		hotel_list = Hotel.objects.filter(city=c.id) or hotel_list

	reserve = Reserve(customer_id=1, hotel_id=1, room_id=1, nights=1, room_amount=1, adult_amount=0, children_amount=0, cost=0)
	reserve.check_in_date = request.POST['check_in_date']
	reserve.check_out_date = request.POST['check_out_date']
	reserve.save()

	return render_to_response('choose.html', {'q':reserve.id, 'hotel_list':hotel_list, 'keyword':request.POST['find'], 'ind':request.POST['check_in_date'], 'outd':request.POST['check_out_date']})

def choose_room(request):
	reserve = Reserve.objects.filter(id=request.GET['q'])[0]
	reserve.hotel_id = request.GET['hotel']
	reserve.save()

	room_list = Room.objects.filter(hotel_id=request.GET['hotel'])

	return render_to_response('choose_room.html', {'room_list':room_list, 'hotel':reserve.hotel, 'q':reserve.id,'city':reserve.hotel.city.name})

def choose_room2(request):
	room = Room.objects.filter(id=request.GET['room'])[0]
	reserve = Reserve.objects.filter(id=request.GET['q'])[0]
	reserve.room_id = room.id
	reserve.save()

	return render_to_response('choose_room2.html', {'reserve':reserve, 'q':request.GET['q'],'city':request.GET['city'], 'room': room})

def confirm(request):
	customer = Customer(name=request.POST['name'], email=request.POST['email'], mobile=request.POST['mobile'])
	customer.save()
	
	room = Room.objects.filter(id=request.POST['room_id'])[0]
	
	reserve = Reserve.objects.filter(id=request.POST['q'])[0]
	reserve.room_amount = request.POST['rooms']
	reserve.adult_amount = request.POST['adults']
	reserve.children_amount = request.POST['children']
	reserve.nights = request.POST['nights']
	reserve.cost = int(room.price) * int(reserve.room_amount) * int(reserve.nights)
	reserve.customer_id = customer.id
	reserve.save()
	
	return render_to_response('confirm.html', {'reserve':reserve, 'q':request.POST['q']})

def basket(request):
	reserve = Reserve.objects.filter(id=request.GET['q'])[0]
	return render_to_response('basket.html', {'reserve': reserve})

