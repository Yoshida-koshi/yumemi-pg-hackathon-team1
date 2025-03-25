from rest_framework import serializers
from .models import Habits

class HabitsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Habits
        fields = ('habit_name', 'judge_method', 'enabled_notification', 'judge_time', 'user_id')