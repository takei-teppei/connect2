$(function(){
  function addUser(user){
    var html =`
              <div class="search__userspace">
                <div class="search__userspace--addname">
                  ${user.name}
                </div>
                <div class="search__userspace--addbtn" data-user-id="${user.id}" data-user-name="${user.name}">
                  追加
                </div>
              </div>
               `
    $("#userspace").append(html);
  }

  function addnoUser(){
    var html =`
              <div class="search__userspace">
                <div class="search__userspace--noname">
                  ユーザー名が見つかりません
                </div>
              </div>
               `
    $("#userspace").append(html);
  }

  function deleteUser(name,id){
    var html =`
              <div class="search__member--right" id = "${id}">
                <div class="search__member--addname">
                  ${name}
                </div>
                <div class="search__member--deletebtn" data-user-id="${id}" data-user-name="${name}">
                  削除
                </div>
              </div>
               `
    $("#add_userspace").append(html);
  }

  function addMember(userid) {
    let html = `<input value="${userid}" name="group[user_ids][]" type="hidden" id="group_user_ids_${userid}" />`;
    $(`#${userid}`).append(html);
  }

  $(document).on("keyup",".search__userform--form", function(){
    var input = $(this).val();
    $.ajax({
      type: "GET",
      url: "/users/search/",
      dataType: 'json',
      data: { keyword: input},
    })

    .done(function(users) {
      $("#userspace").empty();

      if (users.length !== 0) {
        users.forEach(function(user) {
          addUser(user);
        });
      } else if (input.length == 0) {
        return false;
      } else {
        addnoUser();
      }
    })

    .fail(function() {
      alert("通信エラーです。ユーザーが表示できません。");
    });
  })

  $(document).on("click",".search__userspace--addbtn",function(){
    const username = $(this).attr("data-user-name"); //data-user-nameの値をそのまま引き継げる。
    const userid = $(this).attr("data-user-id");     //上記と同様。
    $(this).parent().remove();

    deleteUser(username,userid);
    addMember(userid);
  });

  $(document).on("click",".search__member--deletebtn",function(){
    $(this).parent().remove();
  });
});