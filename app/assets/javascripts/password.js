$(function(){
  var password = '#password';
  var passcheck = '#js-passcheck';

  $(passcheck).change(function(){
    if ($(this).prop('checked')){
      $(password).attr('type','text');
    } else {
      $(password).attr('type','password');
    }
  });
});