# Generated by Django 3.0 on 2019-12-18 05:37

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('queueAlgorithms', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_in',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 18, 11, 7, 28, 993861)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='consultation_out',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 18, 11, 7, 28, 993881)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='date_time',
            field=models.DateField(default=datetime.datetime(2019, 12, 18, 11, 7, 28, 993717)),
        ),
        migrations.AlterField(
            model_name='appointmentrecords',
            name='time_in',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 18, 11, 7, 28, 993840)),
        ),
    ]