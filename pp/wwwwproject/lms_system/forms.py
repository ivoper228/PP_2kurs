from django.forms import ModelForm
from .models import Tests
class TestForms(ModelForm):
    class Meta:
        model = Tests
        fields = ["questions"]

