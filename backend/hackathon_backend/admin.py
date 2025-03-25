from django.contrib import admin
from .models import Users, Habits, Payment

class UsersAdmin(admin.ModelAdmin):
    list_display = ('id', 'user_name', 'email_address', 'password')

admin.site.register(Users, UsersAdmin)
admin.site.register(Habits)
admin.site.register(Payment)

# Register your models here.
