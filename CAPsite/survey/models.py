from django.db import models


class Survey(models.Model):
    sid = models.AutoField(primary_key=True, verbose_name='Survey ID')

    def __int__(self):
        return self.sid


class Question(models.Model):
    qid = models.AutoField(primary_key=True, verbose_name='Question ID')
    sid = models.ForeignKey(Survey, on_delete=models.CASCADE, default=1, verbose_name='Survey ID')
    question_text = models.CharField(max_length=200, verbose_name='Question')
    is_multiple_choice = models.BooleanField(default=True, verbose_name='Is the question multiple choice?')
    # verbose_name_plural exists to order models in admin dashboard

    class Meta:
        verbose_name_plural = "1. Questions"

    def __str__(self):
        return self.question_text


class Choice(models.Model):
    cid = models.AutoField(primary_key=True, verbose_name='Choice ID')
    qid = models.ForeignKey(Question, on_delete=models.CASCADE, verbose_name='Question ID')
    choice_text = models.CharField(max_length=200, verbose_name='Choice')

    class Meta:
        verbose_name_plural = "2. Choices"

    def __str__(self):
        return self.choice_text


class Response(models.Model):
    rid = models.AutoField(primary_key=True, verbose_name='Response ID')
    userID = models.IntegerField(default=1)
    qid = models.ForeignKey(Question, on_delete=models.CASCADE, verbose_name='Question ID')
    response_text = models.CharField(max_length=200, verbose_name='Response')

    class Meta:
        verbose_name_plural = "3. Responses"

    def __str__(self):
        return self.response_text
