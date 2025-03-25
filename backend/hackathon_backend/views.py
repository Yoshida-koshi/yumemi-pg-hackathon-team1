from django.shortcuts import render
from rest_framework import views, status
from .serializer import HabitsSerializer
from rest_framework.response import Response
from .models import Habits, Users

class HabitViews(views.APIView):
    queryset = Habits.objects.all()
    serializer_class = HabitsSerializer
    def post(self, request, *args, **kwargs):
        serializer = HabitsSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(status=status.HTTP_201_CREATED)
    
    def get(self, request, *args, **kwargs):
        user_id = request.GET.get("user_id")
        if not user_id:
            return Response({"message": "user_idが空または存在しません"}, status=status.HTTP_400_BAD_REQUEST)
        user = Users.objects.filter(id=user_id)
        if not user.exists():
            return Response({"message": "ユーザーが存在しません"}, status=status.HTTP_404_NOT_FOUND)
        habit_list = Habits.objects.filter(user_id=user_id)
        serializer = HabitsSerializer(habit_list, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

class PutDeleteHabitView(views.APIView):
    def put(self, request, id, *args, **kwargs):
        data = request.data
        if not data.get('habit_name'):
            return Response({"message": "habit_nameは空または存在しません"}, status=status.HTTP_400_BAD_REQUEST)
        if not data.get('judge_method'):
            return Response({"message": "judge_methodは空または存在しません"}, status=status.HTTP_400_BAD_REQUEST)
        if not data.get('judge_time'):
            return Response({"message": "judge_timeは空または存在しません"}, status=status.HTTP_400_BAD_REQUEST)
        if not "enabled_notification" in request.data:
            return Response({"message": "enabled_notificationは存在しません"}, status=status.HTTP_400_BAD_REQUEST)
        if not "payment_money" in request.data:
            return Response({"message": "payment_moneyは存在しません"}, status=status.HTTP_400_BAD_REQUEST)
        if not data.get('payment_method'):
            return Response({"message": "payment_methodは空または存在しません"}, status=status.HTTP_400_BAD_REQUEST)
        habit = Habits.objects.filter(id=id)
        if not habit.exists():
            return Response({"message": "習慣化項目が存在しません"}, status=status.HTTP_404_NOT_FOUND)
        habit.update(habit_name=data.get('habit_name'), judge_method=data.get('judge_method'), judge_time=data.get('judge_time'), enabled_notification=data.get('enabled_notification'), payment_money=data.get('payment_money'), payment_method=data.get('payment_method'))
        return Response({"message": "習慣化項目を更新しました"}, status=status.HTTP_200_OK)
    
    def delete(self, request, id, *args, **kwargs):
        habit = Habits.objects.filter(id=id)
        if not habit.exists():
            return Response({"message": "習慣化項目が存在しません"}, status=status.HTTP_404_NOT_FOUND)

        habit.delete()
        return Response({"message": "習慣化項目の削除に成功しました"}, status=status.HTTP_200_OK)

# Create your views here.
