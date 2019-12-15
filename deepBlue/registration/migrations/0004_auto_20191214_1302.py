# Generated by Django 2.2.7 on 2019-12-14 07:32

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0003_auto_20191214_1249'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='appointmentqueue',
            name='time_out',
        ),
        migrations.AddField(
            model_name='appointmentqueue',
            name='consultation_out',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 14, 13, 2, 22, 728772)),
        ),
        migrations.AddField(
            model_name='appointmentqueue',
            name='time_out_consultation_in',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 14, 13, 2, 22, 728772)),
        ),
        migrations.AlterField(
            model_name='appointmentqueue',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 14, 13, 2, 22, 728772)),
        ),
        migrations.AlterField(
            model_name='appointmentqueue',
            name='time_in',
            field=models.DateTimeField(default=datetime.datetime(2019, 12, 14, 13, 2, 22, 728772)),
        ),
    ]