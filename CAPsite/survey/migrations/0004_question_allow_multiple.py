# Generated by Django 2.1.3 on 2018-11-12 01:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('survey', '0003_auto_20181110_1606'),
    ]

    operations = [
        migrations.AddField(
            model_name='question',
            name='allow_multiple',
            field=models.BooleanField(default=False, verbose_name='Allow multiple options to be selected?'),
        ),
    ]
