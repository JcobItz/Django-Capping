# Generated by Django 2.1.3 on 2018-11-12 01:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('survey', '0004_question_allow_multiple'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='question',
            name='allow_multiple',
        ),
    ]
