$(document).ready(function(){
  $('#datepicker-start').datetimepicker({
    minDate: new Date()
  });

  $('#datepicker-end').datetimepicker({
    minDate: new Date(),
    useCurrent: false
  });

  $('#datepicker-start').on('dp.change', function(e) {
    $('#datepicker-end').data('DateTimePicker').minDate(e.date);
  });
  $('#datepicker-end').on('dp.change', function(e) {
    $('#datepicker-start').data('DateTimePicker').maxDate(e.date);
  });

  $(document).on('click','.btn-toggle-reply', function(){
    var id = $(this).parent().attr('data');
    $(this).addClass('hide');
    $(this).siblings().removeClass('hide');
    $('.child-comment-field'+id).toggleClass('hide');
    $('.btn-toggle-reply'+id).toggleClass('hide');
  });

  $('.owl-carousel').owlCarousel();
});
