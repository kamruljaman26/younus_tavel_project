from django.shortcuts import render
from django.http import HttpResponse
from django.http import Http404
from django.views.decorators.csrf import csrf_exempt

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

        print(id, type, current_user)

        if type == 'flight':
            pass
        return render(request, 'book.html', {'msg': 'Booking successful'})


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
