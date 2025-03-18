# /usr/bin/env python
# -*- coding: utf-8 -*-

__author__ = 'asameshi'
__version__ = '1.0.0'
__date__ = '2025/03/17 (Created: 2025/03/17)'

""" DBモデルの定義 """

from django.db import models

class Users(models.Model):
    """ ユーザー情報 """
    user_name = models.CharField(max_length=100, not_null=True)
    email_address = models.EmailField(not_null=True)
    password = models.CharField(max_length=100)
    registered_date = models.DateTimeField(auto_now_add=True, not_null=True)
    # point = models.IntegerField(default=0, not_null=True)

    def __str__(self):
        return self.user_name

class Payment(models.Model):
    """ 支払い情報 """
    credit_number = models.CharField(max_length=16, not_null=True)
    expire_date = models.DateTimeField(not_null=True)
    security_code = models.CharField(max_length=3, not_null=True)

class Period(models.Model):
    """ 習慣の期間情報 """
    period_type = models.CharField(max_length=100, not_null=True)
    start_date = models.DateTimeField(not_null=True)
    end_date = models.DateTimeField(not_null=True)
    habit_id = models.ForeignKey('Habits', on_delete=models.CASCADE)

class Habits(models.Model):
    """ 習慣情報 """
    user_id = models.ForeignKey(Users, on_delete=models.CASCADE)
    payment_id = models.ForeignKey(Payment, on_delete=models.CASCADE)
    habit_name = models.CharField(max_length=100, not_null=True)
    enabled_notification = models.BooleanField(default=True, not_null=True)
    judge_time = models.DateTimeField(not_null=True, not_null=True)
    period_id = models.ForeignKey(Period, not_null=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.habit_name

class Notifications(models.Model):
    """ 通知情報 """
    habit_id = models.ForeignKey(Habits, on_delete=models.CASCADE)
    user_id = models.ForeignKey(Users, on_delete=models.CASCADE)
    notification_date = models.DateTimeField(not_null=True)
    notification_content = models.CharField(max_length=100, not_null=True)
    notification_status = models.BooleanField(max_length=100, not_null=True)
