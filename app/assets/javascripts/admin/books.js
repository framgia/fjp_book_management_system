//= require select2/dist/js/select2.min
//= require propellerkit/components/select2/js/pmd-select2
//= require cocoon
//= require jquery.purr
//= require best_in_place
//= require_self

$(document).on('click', '.btn-create-item', function(){
  var book_id = $(this).attr('value');
  var book_item_location = $('#book_item_location_field-').val();
  var book_item_state = $('select[name="book_item[state]"]').val();
  var book_item_description = $('#book_item_description_field-').val();
  var url = '/admin/books/'+ book_id + '/book_items/';
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name = "csrf-token"]').attr('content')
    }
  });
  $.ajax({
    type: 'POST',
    url: url,
    data: {
      book_item: {
        location: book_item_location,
        state: book_item_state,
        description: book_item_description,
        book_id: book_id
      }
    },
    success: function () {
      location.reload();
      $('#items-list-view').load(document.URL + ' #items-list');
    }
  });
});

$(document).on('click', '.btn-delete-item', function() {
  var book_id = $(this).attr('id');
  var book_item_id = $(this).data('id');
  var url = '/admin/books/'+ book_id + '/book_items/' + book_item_id;

  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name = "csrf-token"]').attr('content')
    }
  });
  $.ajax({
    type: 'DELETE',
    url: url,
    data: {
      book_item: {
        id: book_item_id
      }
    },
    success: function () {
      location.reload();
      $('#items-list-view').load(document.URL + ' #items-list');
    }
  });
});

$(document).ready(function() {
  $('.best_in_place').best_in_place();
  $('.best_in_place').change(function() {
    $.ajax({
      success: function() {
        location.reload();
      }
    });
  });

  $('.modal').on('hidden.bs.modal', function(){
    $(this).find('form')[0].reset();
  });

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

  $('.select-authors').select2({
    tags: false,
    theme: 'bootstrap'
  });


  var onAddFile;
  onAddFile = function(event) {
    var file, thumbContainer, url;
    file = event.target.files[0];
    url = URL.createObjectURL(file);
    thumbContainer = $(this).parent().siblings('div.thumb');
    if (thumbContainer.find('img').length === 0) {
      return thumbContainer.append('<img src="' + url + '" />');
    } else {
      return thumbContainer.find('img').attr('src', url);
    }
  };
  $('input[type=file]').each(function() {
    return $(this).change(onAddFile);
  });
  $('body').on('cocoon:after-insert', function(e, addedPartial) {
    return $('input[type=file]', addedPartial).change(onAddFile);
  });


  document.querySelector('html').classList.add('js');
  var fileInput = document.querySelector('.input-file'),
    button = document.querySelector('.input-file-trigger'),
    the_return = document.querySelector('.file-return');
  button.addEventListener('keydown', function(event) {
    if (event.keyCode == 13 || event.keyCode == 32) {
      fileInput.focus();
    }
  });
  button.addEventListener('click', function() {
    fileInput.focus();
    return false;
  });
  fileInput.addEventListener('change', function() {
    the_return.innerHTML = this.value;
  });
});
