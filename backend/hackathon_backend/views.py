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
        
# Create your views here.
