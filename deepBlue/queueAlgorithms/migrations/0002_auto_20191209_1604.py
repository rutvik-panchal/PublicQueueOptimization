# Generated by Django 3.0 on 2019-12-09 16:04

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('queueAlgorithms', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentrecords',
            name='date_time',
            field=models.DateField(default=datetime.datetime(2019, 12, 9, 16, 4, 14, 514873)),
        ),
    ]