# Generated by Django 2.1.1 on 2018-10-23 02:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('survey', '0009_auto_20181022_2213'),
    ]

    operations = [
        migrations.AlterField(
            model_name='choice',
            name='qid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='survey.Question', verbose_name='Question ID'),
        ),
    ]