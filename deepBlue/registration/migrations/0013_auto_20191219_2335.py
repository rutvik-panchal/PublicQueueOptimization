# Generated by Django 3.0 on 2019-12-19 18:05

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0012_auto_20191219_0011'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentqueue',
            name='consultation_time_in',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 19, 23, 35, 6, 388825)),
        ),
        migrations.AlterField(
            model_name='appointmentqueue',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 19, 23, 35, 6, 388713)),
        ),
    ]