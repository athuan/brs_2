$(function() {
  $("input").keydown(function(){
    $.ajax({
      url: "/users",
      type: "GET",
      dataType: "json",
      success:function(data){
        $("#q_name_or_email_cont").autocomplete({
          source: data,
          
          autoFocus: true
        });
      }
    });
  });
});