# Generated by Django 2.1.1 on 2018-10-15 16:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('survey', '0002_auto_20181010_0924'),
    ]

    operations = [
        migrations.RenameField(
            model_name='choice',
            old_name='prompt',
            new_name='pid',
        ),
    ]