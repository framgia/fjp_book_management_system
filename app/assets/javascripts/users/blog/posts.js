/* global SimpleMDE */

//= require simplemde/dist/simplemde.min
//= require select2/dist/js/select2.min
//= require_self
//= require propellerkit/components/select2/js/pmd-select2



$(document).ready(function() {
  var editorOptions = {
    element: $('textarea')[0],
    forceSync: true,
    spellChecker: false
  };

  new SimpleMDE(editorOptions);

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
