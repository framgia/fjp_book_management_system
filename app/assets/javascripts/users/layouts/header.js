$('.search-toggle').click(function() {
  if($(this).hasClass('active')){
    $(this).removeClass('active');
    $('.search-form').removeClass('open');

    setTimeout (function(){
      $('.navbar-nav').removeClass('hide');
    }, 300);
  }
  else{
    $(this).addClass('active');
    $('.search-form').addClass('open');
    $('.navbar-right').addClass('hide');
  }
});

var timer;

$('#search').keyup(function(){
  $('#autocomplete').html($('#searching').html());

  clearTimeout(timer);

  var ms = 500;
  var val = this.value;

  timer = setTimeout(function() {
    search(val);
  }, ms);
});

function search(query) {
  if(query.length > 0){
    var url = '/search.json?query=' + query;
    $.get(url, function (data, status) {
      if(status === 'success'){
        $('#autocomplete').html($(data.html_data));
      }
    });
  }
  else {
    $('#autocomplete').html('');
  }
}

$('.notify.unread').hover(function(){
  var id = $(this).attr('data');
  var element = this;
  $.ajax({
    beforeSend: function (xhr) {
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'PATCH',
    url: '/notifications/' + id,
    success: function(data){
      $(element).removeClass('unread');
      $('.notifi-count').attr('data-badge', data.unread);
    }
  });
});

$(document).ready(function(){
  $('.announcement-icon').on('click', function() {
    $('.announcements').toggleClass('hide');
  });

  $('#feedback-cancel, .feedback-done').on('click', function() {
    $('#feedback-content').val('');
  });

  $('#feedback-button').on('click', function() {
    $('#feedback-create').show();
    $('.feedback-done').hide();
    $('#feedback-cancel').show();
    $('.feedback-state').hide();
    $('#feedback-content').val('').show();
    $('.feedback-content').hide().text('');
  });

  $('#feedback-create').on('click', function() {
    var content = $('#feedback-content').val();
    var message_empty = $('#empty-content').text();
    var message_success = $('#successfull-mes').text();
    var message_waiting = $('#waiting-mes').text();
    var state = $('.feedback-state');
    if(content == '') {
      state.show().text(message_empty).css('color','#f00');
      return true;
    }

    state.show().text(message_waiting).css('color','#555');
    $.ajax({
      beforeSend: function (xhr) {
        xhr.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').attr('content'));
      },
      type: 'POST',
      url: '/feedback',
      data: {
        feedback: {
          content: content,
        }
      },
      success: function(){
        state.show().css('color','#259b24').text(message_success);
        $('#feedback-content').hide();
        $('.feedback-content').show().text(content);
        $('#feedback-create').hide();
        $('#feedback-cancel').hide();
        $('.feedback-done').show();
        setTimeout(function() {
          $('#complete-dialog').modal('hide');
        }, 3000);
      }
    });


  });
});
