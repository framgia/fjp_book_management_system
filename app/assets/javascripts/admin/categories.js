//= require_self

$(document).on('click', '.save-category', function() {
  var categoryId = $(this).data('id');
  var classCheckbox = '.books-checked-at-category-' + categoryId;
  var idTextFieldTitle = '#text-field-category-title-' + categoryId;
  var idTextFieldParentId = '#text-field-category-parent-' + categoryId;
  var idTextFieldDescription = '#text-field-category-description-' + categoryId;
  var url = '/admin/categories/' + categoryId;
  var title = $(idTextFieldTitle).val();
  var parentId = $(idTextFieldParentId).val();
  var description = $(idTextFieldDescription).val();
  var checkbox = 'input'+classCheckbox+':checked';

  var listBook = $(checkbox)
    .map(function() {
      return this.value;
    })
    .get();

  $.ajax({
    type:'PATCH',
    url: url,
    data: {
      category: {
        id: categoryId,
        title: title,
        parent_id: parentId,
        description: description,
        book_ids: listBook,
      }
    }
  }).success(function(){
    $('#categories-list-view').load(document.URL + ' #categories-list');
  });
});

$(document).on('click', '.delete-category', function() {
  var categoryId = $(this).data('id');
  var url = '/admin/categories/' + categoryId;

  $.ajax({
    type:'DELETE',
    url: url,
    data: {
      category: {
        id: categoryId,
      }
    }
  }).success(function(){
    $('#categories-list-view').load(document.URL + ' #categories-list');
  });
});

$(document).on('click', '.create-category', function() {
  var classCheckbox = '.books-checked-at-category-';
  var idTextFieldTitle = '#text-field-category-title-';
  var idTextFieldParentId = '#text-field-category-parent-';
  var idTextFieldDescription = '#text-field-category-description-';
  var url = '/admin/categories';
  var title = $(idTextFieldTitle).val();
  var parentId = $(idTextFieldParentId).val();
  var description = $(idTextFieldDescription).val();
  var checkbox = 'input'+classCheckbox+':checked';

  var listBook = $(checkbox)
    .map(function() {
      return this.value;
    })
    .get();

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
    }
  }).success(function(){
    $('#categories-list-view').load(document.URL + ' #categories-list');
  });
});
