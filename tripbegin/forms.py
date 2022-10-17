from django import forms
from .models import Booking


# Booking registration form
class BookingForm(forms.ModelForm):
    class Meta:
        model = Booking
        fields = (
            "name",
            "email",
            "gender",
            "dob",
            "mobile",
        )
