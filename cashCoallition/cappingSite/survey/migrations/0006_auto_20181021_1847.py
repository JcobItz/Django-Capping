# Generated by Django 2.1.1 on 2018-10-21 22:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('survey', '0005_question_is_multi_choice'),
    ]

    operations = [
        migrations.RenameField(
            model_name='question',
            old_name='is_multi_choice',
            new_name='is_multiple_choice',
        ),
    ]
