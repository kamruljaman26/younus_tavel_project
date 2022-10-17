from django.shortcuts import render
from django.http import HttpResponse
from django.http import Http404
from django.views.decorators.csrf import csrf_exempt
from .forms import *

# import jwt
import json
import datetime

from .models import User, Location, History, Flight, Hotel, Payment

json_file = open('databaseProj/config_vars.json').read()
data = json.loads(json_file)


@csrf_exempt
def index(request):
    if request.method == 'POST':
        flights = list(Flight.objects.all())
        return render(request, 'index.html', {"results": "yes", "some_list": flights, "class": 'economy'})
    else:
        return render(request, 'index.html')


@csrf_exempt
def login(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        check_user = User.objects.filter(email=email)
        valid_user = (len(list(check_user)) == 1)
        if valid_user:
            current_user = email
            user_name = check_user.first().username
            request.session['current_user'] = current_user
            request.session['user_name'] = user_name
            # encoded = jwt.encode(payload, secret, algorithm='HS256')
            return render(request, 'login.html', {'msg': 'Login successful'})
        else:
            return render(request, 'login.html', {'msg': 'Failed. Please try again'})
    else:
        return render(request, 'login.html')


@csrf_exempt
def signup(request):
    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        print(request.POST)
        existing_email = User.objects.filter(email=email)
        is_new_user = (len(list(existing_email)) == 0)
        print(is_new_user)
        if is_new_user:
            new_user = User.objects.create(username=username, email=email, password=password)
            new_user.save()
            return render(request, 'signup.html', {'msg': 'Sign up successful'})
        else:
            return render(request, 'signup.html', {'msg': 'Error. Email already exists'})
    else:
        return render(request, 'signup.html')


@csrf_exempt
def hotels(request):
    if request.method == 'POST':
        # location = request.POST['location']
        # locationArr = location.split(',')
        # locationCity = locationArr[0];
        hotels = Hotel.objects.all()
        hotels = list(hotels)
        print(request.POST)
        return render(request, 'hotels.html', {"results": "yes", "some_list": hotels})
    else:
        return render(request, 'hotels.html')


def book(request, id, type):
    if request.method == 'POST':
        current_user = request.session['current_user']
        print("user:", current_user)

        # Handle hotel booking
        if type == 'hotel':
            form = BookingForm(request.POST)
            # print(form)
            print("hotel")
            if form.is_valid():
                booking = form.save()
                booking.hotel = Hotel.objects.get(id=id)
                booking.user = User.objects.filter(email=current_user).first()
                booking.save()

                # messages.success(request, "Registration successful.")
                return render(request, 'book.html', {"form": form, 'msg': 'Booking confirmed!'})
            return render(request, 'book.html', {"form": form, 'msg': 'Invalid Data'})

        # Handle flight booking
        elif type == 'flight':
            form = BookingForm(request.POST)
            # print(form)
            print("flight")
            if form.is_valid():
                booking = form.save()
                booking.flight = Flight.objects.get(id=id)
                booking.user = User.objects.filter(email=current_user).first()
                booking.save()

                # messages.success(request, "Registration successful.")
                return render(request, 'book.html', {"form": form, 'msg': 'Booking confirmed!'})
            return render(request, 'book.html', {"form": form, 'msg': 'Invalid Data'})

        return render(request, 'book.html', {'msg': 'Booking successful'})
    else:
        form = BookingForm()
        return render(request, 'book.html', {"form": form, 'msg': 'Load forms'})


def booking(request):
    current_user = request.session['current_user']
    hotel_list = list(Booking.objects.filter(user=User.objects.filter(email=current_user).first(), hotel__isnull=False))
    flight_list = list(Booking.objects.filter(user=User.objects.filter(email=current_user).first(), flight__isnull=False))
    return render(request, 'booking.html', {"hotel_list": hotel_list, "flight_list": flight_list})


def account(request):
    setting = request.GET.get('setting')
    current_user = request.session['current_user']
    if setting == 'history':
        history = History.objects.filter(userEmail=current_user)
        return render(request, 'account.html', {'setting': setting, 'transactions': history})
    else:
        return render(request, 'account.html', {'setting': setting})


def logout(request):
    # clear session
    del request.session['current_user']
    del request.session['user_name']
    return render(request, 'login.html', {'msg': 'Logout successful'})
