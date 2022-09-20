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
		# secret = data['secret']
		source = request.POST['source']
		sourceArr = source.split(',')
		sourceCity = sourceArr[0]
		destination = request.POST['destination']
		destinationArr = destination.split(',')
		destinationCity = destinationArr[0]
		startdate = request.POST['startdate']
		startdate = startdate.split('-')
		year = int(startdate[0])
		month = int(startdate[1])
		day = int(startdate[2])
		flightClass = request.POST['class']
		print(request.POST)
		if flightClass == 'economy':
			flights = Flight.objects.filter(sourceLocation = sourceCity).filter(destinationLocation=destinationCity)\
				.filter(departureDate=datetime.date(year,month,day)).filter(numSeatsRemainingEconomy__gt=0)
			flights = list(flights)
			return render(request, 'index.html',{"results":"yes", "some_list": flights, "class":flightClass})
		elif flightClass == 'business':
			flights = Flight.objects.filter(sourceLocation = sourceCity).filter(destinationLocation=destinationCity)\
				.filter(departureDate=datetime.date(year,month,day)).filter(numSeatsRemainingBusiness__gt=0)
			flights = list(flights)
			return render(request, 'index.html',{"results":"yes", "some_list": flights, "class":flightClass})
		else:
			flights = Flight.objects.filter(sourceLocation = sourceCity).filter(destinationLocation=destinationCity)\
				.filter(departureDate=datetime.date(year,month,day)).filter(numSeatsRemainingFirst__gt=0)
			flights = list(flights)
			return render(request, 'index.html',{"results":"yes", "some_list": flights, "class":flightClass})
	else:
		return render(request, 'index.html')
	## figure out how booking will work (send to booking page?)


@csrf_exempt
def login(request):
	if request.method == 'POST':
		email = request.POST['email']
		password = request.POST['password']
		check_user = User.objects.filter(email = email)
		valid_user = (len(list(check_user)) == 1)
		if valid_user:
			current_user = email
			user_name = check_user.first().username
			request.session['current_user'] = current_user
			request.session['user_name'] = user_name
			#encoded = jwt.encode(payload, secret, algorithm='HS256')
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
		existing_email = User.objects.filter(email = email)
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
		location = request.POST['location']
		locationArr = location.split(',')
		locationCity = locationArr[0];
		hotels = Hotel.objects.filter(city = locationCity)
		hotels = list(hotels)
		print(request.POST)
		return render(request, 'hotels.html',{"results":"yes", "some_list": hotels})
	else:
		return render(request, 'hotels.html')


def book(request):
	if request.method == 'POST':
		objId = request.GET.get('id')
		bookType = request.GET.get('type')
		card_number = request.POST['card_number']
		current_user = request.session['current_user']
		current_date = datetime.datetime.today().strftime('%Y-%m-%d')
		if bookType == 'flight':
			travelClass = request.GET.get('class')
			obj = Flight.objects.filter(id = objId).first()
			if travelClass == 'economy':
				Flight.objects.filter(id = objId).update(numSeatsRemainingEconomy = obj.numSeatsRemainingEconomy-1)
				new_transaction = History.objects.create(userEmail=current_user, bookingType=bookType, bookingStartDate= current_date,paymentAmount=obj.fareEconomy, paymentCardNo=card_number, companyName=obj.companyName, location=obj.destinationLocation)
				new_transaction.save()
			elif travelClass == 'business':
				Flight.objects.filter(id = objId).update(numSeatsRemainingBusiness = obj.numSeatsRemainingBusiness-1)
				new_transaction = History.objects.create(userEmail=current_user, bookingType=bookType, bookingStartDate= current_date,paymentAmount=obj.fareBusiness, paymentCardNo=card_number, companyName=obj.companyName, location=obj.destinationLocation)
				new_transaction.save()
			elif travelClass == 'first':
				Flight.objects.filter(id = objId).update(numSeatsRemainingFirst = obj.numSeatsRemainingFirst-1)
				new_transaction = History.objects.create(userEmail=current_user, bookingType=bookType, bookingStartDate= current_date,paymentAmount=obj.fareFirst, paymentCardNo=card_number, companyName=obj.companyName, location=obj.destinationLocation)
				new_transaction.save()
		elif bookType == 'hotel':
			obj = Hotel.objects.filter(id = objId).first()
			new_transaction = History.objects.create(userEmail=current_user, bookingType=bookType, bookingStartDate= current_date,paymentAmount=obj.dailyCost, paymentCardNo=card_number, companyName=obj.companyName, location=obj.address)
			new_transaction.save()
		return render(request, 'book.html', {'msg': 'Booking successful'})


def account(request):
	setting = request.GET.get('setting')
	current_user = request.session['current_user']
	if setting == 'history':
		history = History.objects.filter(userEmail = current_user)
		return render(request, 'account.html', {'setting': setting, 'transactions': history})
	else:
		return render(request, 'account.html', {'setting': setting})


def logout(request):
	#clear session
	del request.session['current_user']
	del request.session['user_name']
	return render(request, 'login.html', {'msg': 'Logout successful'})