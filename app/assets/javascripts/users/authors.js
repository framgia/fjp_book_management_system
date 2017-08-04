$(document).ready(function(){
  $('#author-book-slider').owlCarousel({
    margin: 0,
    loop: false,
    lazyLoad: true,
    items: 3,
    responsive: {
      0: {
        items: 2
      },
      768: {
        items: 3,
        margin: 15
      },
      1024: {
        items: 3
      },
      1440: {
        items: 4
      }
    }
  });

  $('.fa-angle-left').click(function() {
    $(this).parent().next().trigger('prev.owl.carousel');
  });

  $('.fa-angle-right').click(function() {
    $(this).parent().next().trigger('next.owl.carousel');
  });
});
