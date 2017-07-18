$(document).on('click','#btn-edit-book-item', function(){
  var x = $(this).data('id');
  var book_item_location = $('.item-location' + x).text();
  var book_item_state = $('.item-state' + x).text();
  var book_item_description = $('.item-description' + x).text();
  $('#book_item_id_field').val(x);
  $('#book_item_location').val(book_item_location);
  $('#book_item_state').val(book_item_state);
  $('#book_item_description').val(book_item_description);
});

$(document).on('click', '.btn-save-item', function(){
  var book_id = $('#book_id_field').val();
  var book_item_id = $('#book_item_id_field').val();
  var book_item_location = $('#book_item_location_field').val();
  var book_item_state = $('#book_item_state :selected').val();
  var book_item_description = $('#book_item_description_field').val();
  var url =  '/admin/books/'+ book_id + '/book_items/' + book_item_id;
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name = "csrf-token"]').attr('content')
    }
  });
  $.ajax({
    type:'PATCH',
    url: url,
    data: {
      book_item: {
        id: book_item_id,
        location: book_item_location,
        state: book_item_state,
        description: book_item_description,
        book_id: book_id
      }
    }
  }).success(function(){
    $('.modal1').hide();
    $('#items-list-view').load(document.URL + ' #items-list');
  });
});

$(document).on('click', '.button-delete-item', function() {
  var book_id = $('#book_id_field').val();
  var book_item_id = $('#book_item_id_field').val();
  var url =  '/admin/books/'+ book_id + '/book_items/' + book_item_id;

  $.ajax({
    type:'DELETE',
    url: url,
    data: {
      book_item: {
        id: book_item_id
      }
    }
  }).success(function(){
    $('#items-list-view').load(document.URL + ' #item-list');
  });
});

$(document).ready(function() {
  $('#add-publisher').on('click',function(){
    $('#new-publisher').show();
    $('#hide-select1').hide();
  });
  $('#add-series').on('click',function(){
    $('#new-series').show();
    $('#hide-select3').hide();
  });
  $('.chosen-select').chosen({
    allow_single_deselect: true,
    no_results_text: 'No results matched'
  });
  $('.chosen-select2').chosen({
    allow_single_deselect: true,
    no_results_text: 'No results matched'
  });
});
