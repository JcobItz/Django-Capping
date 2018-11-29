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
});