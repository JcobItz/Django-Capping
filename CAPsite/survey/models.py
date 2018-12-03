from django.db import models


class Survey(models.Model):
    sid = models.AutoField(primary_key=True, verbose_name='Survey ID')
    survey_name = models.CharField(max_length=50, verbose_name='Survey Name')
    def __int__(self):
        return self.survey_name


class Question(models.Model):
    qid = models.AutoField(primary_key=True, verbose_name='Question ID')
    sid = models.ForeignKey(Survey, on_delete=models.CASCADE, default=1, verbose_name='Survey ID')
    question_num = models.IntegerField(default=1, verbose_name='Question Number')
    question_text = models.CharField(max_length=200, verbose_name='Question')
    is_multiple_choice = models.BooleanField(default=True, verbose_name='Is the question multiple choice?')
    allow_multiple = models.BooleanField(default=False, verbose_name='Allow multiple options to be selected?')
    allow_other = models.BooleanField(default=False, verbose_name='Allow users to enter their own choice?')

    class Meta:
        verbose_name_plural = "Questions"

    def __str__(self):
        return self.question_text


class Choice(models.Model):
    cid = models.AutoField(primary_key=True, verbose_name='Choice ID')
    qid = models.ForeignKey(Question, on_delete=models.CASCADE, verbose_name='Question ID')
    choice_text = models.CharField(max_length=200, verbose_name='Choice')

    class Meta:
        verbose_name_plural = "Choices"

    def __str__(self):
        return self.choice_text


class Response(models.Model):
    rid = models.AutoField(primary_key=True, verbose_name='Response ID')
    sid = models.ForeignKey(Survey, on_delete=models.CASCADE, verbose_name='Survey ID')
    userID = models.IntegerField(default=1, verbose_name='User ID')
    qid = models.ForeignKey(Question, on_delete=models.CASCADE, verbose_name='Question ID')
    response_text = models.CharField(max_length=200, verbose_name='Response')
    timestamp = models.DateTimeField(auto_now_add=True, verbose_name='Timestamp')
    

    class Meta:
        verbose_name_plural = "Responses"

    def __str__(self):
        return self.response_text

class Email(models.Model):
    eid = models.AutoField(primary_key=True, verbose_name='Email ID')
    email = models.EmailField(max_length=254)
    
    
    def __str__(self):
        return self.response_text