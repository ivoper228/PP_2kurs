# Generated by Django 5.0.2 on 2024-03-02 11:59

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lms_system', '0004_subjects_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='worker',
            name='id_parent',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='lms_system.worker'),
        ),
    ]
