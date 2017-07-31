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
