$(document).ready(function() {
console.log($('#id_is_multiple_choice'))
$('#id_is_multiple_choice').change(function(){
if($("#id_is_multiple_choice").is(':checked'))
    {
        console.log('showing element');
        $("#choice_set-group").show();
        $(".form-row.field-allow_multiple").show();
    }else
    {
        $("#choice_set-group").hide();
        $(".form-row.field-allow_multiple").hide();
        console.log('hiding element');
    }
});
console.log("testing is working");
$('[name=_addanother]').hide();
$('[name=_continue]').hide();
$("p.deletelink-box").hide();
$("td.djn-td.field-is_multiple_choice").append("Is the question multiple choice?");
$("td.djn-td.field-allow_multiple").append("Allow multiple options to be selected?");
$("td.delete.djn-delete-handler.djn-model-survey-question").append("Delete question?");
$("td.djn-td.field-question_num").prepend("Question number:")
$("td.djn-td.field-question_text").prepend("Question text:");
$("td.djn-td.field-allow_other").append("Allow users to enter their own choice?")
$("td.delete.djn-delete-handler.djn-model-survey-choice").append("Delete choice?");
$("th.djn-th.question.required").hide();
$("th.djn-th.is-the-question-multiple-choice").hide();
$("th.djn-th.allow-multiple-options-to-be-selected").hide();
$("th.djn-th").hide();
});