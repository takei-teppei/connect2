$(function(){
  function addmessage(message){
    var html = `<div class="main_space__addmessage" data-id="${message.id}">
                  <div class="main_space__addmessage--name">${message.user_name}</div>
                  <div class="main_space__addmessage--text">${message.text}</div>
                </div>`
    return html;
  }

  $('#new_message').on('.form_space__submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = addmessage(data);
      $('.main_space').prepend(html);
      $('.form_space__text').val('');
      $('.form_space__submit').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})