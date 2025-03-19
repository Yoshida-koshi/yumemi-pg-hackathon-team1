from django.shortcuts import render
from rest_framework import views, status
from .serializer import HabitsSerializer
from rest_framework.response import Response
from .models import Habits

class HabitViews(views.APIView):
    queryset = Habits.objects.all()
    serializer_class = HabitsSerializer
    def post(self, request, *args, **kwargs):
        serializer = HabitsSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(status=status.HTTP_201_CREATED)
# Create your views here.
