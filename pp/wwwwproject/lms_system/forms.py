from django.forms import ModelForm, TextInput
from .models import Tests, Worker
class TestForms(ModelForm):
    class Meta:
        model = Tests
        fields = ["questions"]

class WorkerForms(ModelForm):
    class Meta:
        model = Worker
        fields = ['name','fname','mail']
        widgets = {
            'name': TextInput(attrs={
                'class':'form-control',
                'placeholder':'Укажите имя'
            }),
            'fname': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Укажите фамилию'
            }),
            'mail': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Укажите почту'
            }),

        }

