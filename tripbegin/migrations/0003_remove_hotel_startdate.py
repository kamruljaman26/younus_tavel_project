# Generated by Django 2.0.4 on 2018-05-07 07:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tripbegin', '0002_hotel_companyname'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='hotel',
            name='startDate',
        ),
    ]
