from django.urls import path, include
from rest_framework import routers
from . import views

urlpatterns = [
    path('payment', views.payment, name='payment'),
    path('habits', views.HabitViews.as_view()),
    path('habits/<int:id>', views.PutDeleteHabitView.as_view()),
    path('user', views.UserView.as_view()),
    path('user/<int:id>', views.UserView.as_view())
]