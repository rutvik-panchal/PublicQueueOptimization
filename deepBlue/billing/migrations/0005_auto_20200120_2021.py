# Generated by Django 3.0 on 2020-01-20 14:51

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0005_auto_20200120_2021'),
        ('billing', '0004_auto_20200120_2020'),
    ]

    operations = [
        migrations.AddField(
            model_name='billingqueue',
            name='doctor',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='registration.doctor'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='billingqueue',
            name='date_time',
            field=models.DateTimeField(default=datetime.datetime(2020, 1, 20, 20, 21, 19, 985975)),
        ),
    ]