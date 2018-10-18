from django.db import models


class Survey(models.Model):
    sid = models.AutoField(primary_key=True)

    def __int__(self):
        return self.sid


class Question(models.Model):
    qid = models.AutoField(primary_key=True)
    sid = models.ForeignKey(Survey, on_delete=models.CASCADE)
    question_text = models.CharField(max_length=200)

    def __str__(self):
        return self.question_text


class Choice(models.Model):
    cid = models.AutoField(primary_key=True)
    qid = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)

    def __str__(self):
        return self.choice_text


class Response(models.Model):
    uid = models.AutoField(primary_key=True)
    qid = models.ForeignKey(Question, on_delete=models.CASCADE)
    response_text = models.CharField(max_length=200)

    def __str__(self):
        return self.response_text
