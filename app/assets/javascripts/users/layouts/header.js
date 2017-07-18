$( '.search-toggle' ).click(function() {
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
    $('.navbar-nav').addClass('hide');
  }
});
