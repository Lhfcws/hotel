from django.conf.urls import patterns, include, url
from hotel.views import *

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'hotel.views.home', name='home'),
    # url(r'^hotel/', include('hotel.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
		url(r'^$', index),
		url(r'^index/', index),
		url(r'^choose/', choose),
		url(r'^choose_room/', choose_room),
		url(r'^confirm/', confirm),
)
