from django.shortcuts import render
from django.http import HttpResponse
from .models import product
# Create your views here.
def index(request):
    products=product.objects.all()
    return render(request,"index.html",{'p':products})