# Generated by Django 3.0 on 2019-12-06 09:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0002_doctor'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='patient',
            name='email_id',
        ),
    ]