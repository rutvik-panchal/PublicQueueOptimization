# Generated by Django 2.2.7 on 2019-12-13 11:04

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentqueue',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 13, 16, 34, 3, 70874)),
        ),
    ]