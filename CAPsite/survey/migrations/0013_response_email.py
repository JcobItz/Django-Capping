# Generated by Django 2.1.3 on 2018-11-28 15:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('survey', '0012_remove_choice_sid'),
    ]

    operations = [
        migrations.AddField(
            model_name='response',
            name='email',
            field=models.CharField(default='', max_length=254, verbose_name='Email'),
        ),
    ]
