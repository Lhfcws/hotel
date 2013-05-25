#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

from django.template import Context
from django.shortcuts import render_to_response


def index(request):
	return render_to_response('index.html', {})
