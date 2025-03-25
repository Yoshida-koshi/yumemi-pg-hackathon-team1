from rest_framework import serializers
from .models import Habits, Users
from django.contrib.auth.hashers import make_password

class HabitsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Habits
        fields = ('habit_name', 'judge_method', 'enabled_notification', 'judge_time', 'user_id', 'payment_money', 'payment_method')

class UsersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Users
        fields = ('email_address', 'password')
        extra_kwargs = {'password': {'write_only': True}}
        
    def validate_password(self, value):
        return make_password(value)