from django.db import models

# Create your models here.
class product(models.Model):
    name=models.CharField(max_length=220)
    price=models.IntegerField()
    pic=models.CharField(max_length=33330)
