$(document).ready(function() {
console.log($('#id_is_multiple_choice'))
$('#id_is_multiple_choice').change(function(){
if($("#id_is_multiple_choice").is(':checked'))
    {
        console.log('showing element');
        $("#choice_set-group").show();
    }else
    {
        $("#choice_set-group").hide();
        console.log('hiding element');
    }
});
});