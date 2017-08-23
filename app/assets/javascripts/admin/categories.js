//= require select2/dist/js/select2.min
//= require propellerkit/components/select2/js/pmd-select2
//= require_self

$('.category-book').select2({
  tags: false,
  theme: 'bootstrap'
});

$(document).on('click', '.save-category', function() {
  var categoryId = $(this).data('id');
  var idForm = '#edit_category_' + categoryId;
  var currentPage = $(this).data('current-page');
  var form = $(idForm);
  var url = form.prop('action');
  var form_data = new FormData(document.querySelector(idForm));
  var newhref = location.pathname + '?page=' + currentPage;

  $.ajax({
    type:'PATCH',
    url: url,
    data: form_data,
    processData: false,
    contentType: false,
    success: function() {
      window.location.href = newhref;
    }
  });
});

$(document).on('click', '.delete-category', function() {
  var categoryId = $(this).data('id');
  var url = '/admin/categories/' + categoryId;
  var currentPage = $(this).data('current-page');
  var newhref = location.pathname + '?page=' + currentPage;

  $.ajax({
    type:'DELETE',
    url: url,
    data: {
      category: {
        id: categoryId,
      }
    },
    success: function() {
      window.location.href = newhref;
    }
  });
});

$(document).on('click', '.create-category', function() {
  var idCheckbox = '#category-books-';
  var idTextFieldTitle = '#text-field-category-title-';
  var idTextFieldParentId = '#text-field-category-parent-';
  var idTextFieldDescription = '#text-field-category-description-';
  var url = '/admin/categories';
  var title = $(idTextFieldTitle).val();
  var parentId = $(idTextFieldParentId).val();
  var description = $(idTextFieldDescription).val();
  var listBook = $(idCheckbox).val();

  $.ajax({
    type:'POST',
    url: url,
    data: {
      category: {
        title: title,
        parent_id: parentId,
        description: description,
        book_ids: listBook,
      }
    },
    success: function() {
      $('#categories-list-view').load(document.URL + ' #categories-list');
    }
  });
});
