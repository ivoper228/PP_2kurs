# Generated by Django 5.0.2 on 2024-03-02 11:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lms_system', '0002_rules_level'),
    ]

    operations = [
        migrations.AddField(
            model_name='answers',
            name='answer',
            field=models.TextField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='answers',
            name='istrue',
            field=models.BooleanField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='files',
            name='image',
            field=models.ImageField(default=0, upload_to=''),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='invite',
            name='mail',
            field=models.EmailField(default=0, max_length=254),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='invite',
            name='urlgen',
            field=models.UUIDField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='tests',
            name='questions',
            field=models.TextField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='topic',
            name='is_public',
            field=models.BooleanField(default=0),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='worker',
            name='mail',
            field=models.EmailField(default=0, max_length=254),
            preserve_default=False,
        ),
    ]