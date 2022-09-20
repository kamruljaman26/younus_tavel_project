from django.contrib import admin
from .models import *


# # Register your models here.
# @admin.register(User)
# class UserAdmin(admin.ModelAdmin):
# 	list_display = ['username', 'email']
#
#
# @admin.register(Location)
# class LocationAdmin(admin.ModelAdmin):
# 	list_display = ['city', 'region']


# register model admin
admin.site.register(User, admin.ModelAdmin)
admin.site.register(Location, admin.ModelAdmin)
admin.site.register(History, admin.ModelAdmin)
admin.site.register(Flight, admin.ModelAdmin)
admin.site.register(Hotel, admin.ModelAdmin)
admin.site.register(Payment, admin.ModelAdmin)