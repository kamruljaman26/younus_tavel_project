from django.db import models
import datetime

class User(models.Model):
    username = models.CharField(max_length=40)
    email = models.CharField(max_length=35, unique=True, primary_key=True)
    password = models.CharField(max_length=20)


class Location(models.Model):
    city = models.CharField(max_length=30)
    region = models.CharField(max_length=2)
    image = models.CharField(max_length=200)


class History(models.Model):
    userEmail = models.CharField(max_length=36)
    BOOKING_TYPES = [('flight', 'Flight'), ('train', 'Train'), ('hotel', 'Hotel')]
    bookingType = models.CharField(choices=BOOKING_TYPES, max_length=6)
    bookingStartDate = models.DateField()
    paymentAmount = models.DecimalField(max_digits=6, decimal_places=2)
    paymentCardNo = models.CharField(max_length=16)
    companyName = models.CharField(max_length=30, default='company')
    location = models.CharField(max_length=30, default='location')


class Flight(models.Model):
    companyName = models.CharField(max_length=30)
    sourceLocation = models.CharField(max_length=30)
    destinationLocation = models.CharField(max_length=30)
    departureDate = models.DateField()
    departureTime = models.TimeField()
    fareEconomy = models.DecimalField(max_digits=6, decimal_places=2)
    fareBusiness = models.DecimalField(max_digits=6, decimal_places=2)
    fareFirst = models.DecimalField(max_digits=6, decimal_places=2)
    numSeatsRemainingEconomy = models.IntegerField()
    numSeatsRemainingBusiness = models.IntegerField()
    numSeatsRemainingFirst = models.IntegerField()


class Hotel(models.Model):
    dailyCost = models.DecimalField(max_digits=6, decimal_places=2)
    address = models.CharField(max_length=30)
    city = models.CharField(max_length=30)
    companyName = models.CharField(max_length=30, default='hotel')


class Payment(models.Model):
    PAYMENT_TYPES = [('credit', 'Credit'), ('debit', 'Debit')]
    amount = models.DecimalField(max_digits=6, decimal_places=2)
    paymentType = models.CharField(choices=PAYMENT_TYPES, max_length=6)
    cardNo = models.CharField(max_length=16)


# Booking model class with name, gender, dob, mobile, email
class Booking(models.Model):
    BOOKING_TYPES = [('flight', 'Flight'), ('hotel', 'Hotel')]
    bookingType = models.CharField(choices=BOOKING_TYPES, max_length=6)

    hotel = models.ForeignKey(Hotel, on_delete=models.CASCADE, null=True)
    flight = models.ForeignKey(Flight, on_delete=models.CASCADE, null=True)

    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)

    name = models.CharField(max_length=30)
    gender = models.CharField(max_length=1)

    dob = models.DateField()
    mobile = models.CharField(max_length=10)
    email = models.CharField(max_length=35)

    booking_date = models.DateField(default=datetime.datetime.now)
