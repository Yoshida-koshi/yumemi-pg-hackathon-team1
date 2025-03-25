from django.urls import path, include
from rest_framework import routers
from . import views


urlpatterns = [
    path('habits', views.HabitViews.as_view()),
    path('habits/<int:id>', views.PutDeleteHabitView.as_view())
]