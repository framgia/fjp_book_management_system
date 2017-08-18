//= require_self

$(document).on('click', '.change-status', function() {
  var id = $(this).data('id');
  var url = '/admin/borrows/' + id;
  var requestId = '#request-row-id-' + id;
  var status = this.value;

  $.ajax({
    type:'PATCH',
    url: url,
    data: {
      borrow_books: {
        status: status
      }
    },
    success: function(result) {
      $(requestId).replaceWith(result);
    }
  });
});

$('#status-select-box').change(function () {
  $('#form-borrow-status').submit();
});
