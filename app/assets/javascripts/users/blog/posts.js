/* global SimpleMDE */

//= require simplemde/dist/simplemde.min
//= require select2/dist/js/select2.min
//= require_self
//= require propellerkit/components/select2/js/pmd-select2

var editors = {};

var editorOptions = {
  element: $('#comment-0')[0],
  status: false,
  toolbar: false,
  forceSync: true,
  spellChecker: false
};

editors['comment-0'] = new SimpleMDE(editorOptions);

$('li.load-html').click(function(){
  var id = $(this).attr('data');
  $('#preview-' + id).html(editors['comment-' + id]
    .options.previewRender(editors['comment-' + id].value()));
});

$('.fa-reply').click(function () {
  var id = $(this).attr('data');

  if(editors['comment-' + id] === undefined){
    editorOptions.element = $('#comment-' + id)[0];
    editors['comment-' + id] = new SimpleMDE(editorOptions);
  }

  setTimeout(function(){
    $('.reply-' + id).removeClass('hidden');
  }, 200);
});

$('.btn-cancel').click(function (e) {
  e.preventDefault();
  var id = $(this).attr('data');
  $('.reply-' + id).addClass('hidden');
});

$(document).on('click', '.fa-thumbs-o-up', function () {
  var comment = $(this).attr('data');
  var book = $('#book-id').val();
  var element = this;
  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'POST',
    url: '/blog/posts/' + book + '/comments/' + comment + '/votes',
    success: function(e) {
      $('.vote-count-' + comment).text(e.votes_count);
      $(element).removeClass('fa-thumbs-o-up');
      $(element).addClass('fa-thumbs-up text-primary');
      $(element).attr('vote-id', e.vote_id);
    }
  });
});

$(document).on('click', '.fa-thumbs-up', function () {
  var comment = $(this).attr('data');
  var book = $('#book-id').val();
  var vote = $(this).attr('vote-id');
  var element = this;
  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'DELETE',
    url: '/blog/posts/' + book + '/comments/' + comment + '/votes/' + vote,
    success: function(e) {
      $('.vote-count-' + comment).text(e.votes_count);
      $(element).removeClass('fa-thumbs-up text-primary');
      $(element).addClass('fa-thumbs-o-up');
    }
  });
});

$(document).on('click', '.btn-delete-comment', function () {
  var comment = $(this).attr('data');
  var book = $('#book-id').val();
  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'DELETE',
    url: '/blog/posts/' + book + '/comments/' + comment,
    success: function() {
      $('div#cmt-' + comment).remove();
    }
  });
});

$(document).ready(function() {
  var element = $('textarea#editor');

  if(element.length > 0){
    var editorOptions = {
      element: element[0],
      forceSync: true,
      spellChecker: false
    };

    new SimpleMDE(editorOptions);
  }

  $('.tags-form').select2({
    tags: true,
    theme: 'bootstrap',
    ajax: {
      url: '/books',
      dataType: 'json',
      delay: 250,
      data: function (params) {
        return {
          query: params.term,
          page: params.page
        };
      },
      processResults: function (data, params) {
        params.page = params.page || 1;

        return {
          results: data.items,
          pagination: {
            more: (params.page * 30) < data.total_count
          }
        };
      },
      cache: true
    },
    escapeMarkup: function (markup) { return markup; },
    templateResult: formatBook,
    templateSelection: formatBookSelection
  });

  function formatBook (book) {
    if (book.loading) return null;
    return '<h4>' + book.title + '</h4>';
  }

  function formatBookSelection (book) {
    return book.text || book.title;
  }


  $('.btn-draft').click(function () {
    $('.status').attr('value', 'draft');
    $('form').submit();
  });

  $('.btn-publish').click(function () {
    $('.status').attr('value', 'published');
    $('form').submit();
  });
});
