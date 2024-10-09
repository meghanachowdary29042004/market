from django.contrib import admin
from .models import product
# Register your models here.
class ProductAdmin(admin.ModelAdmin):
    list_display=('name','price','pic')

admin.site.register(product,ProductAdmin)