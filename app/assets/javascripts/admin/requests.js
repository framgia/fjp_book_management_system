var select = document.getElementsByClassName('test-status-selected');

function showRequestsWithStatus() {
  var status = this.value;
  $('#list-borrow-books-view').load(document.URL + '?status=' + status + ' #list-borrow-books');
}

select[0].addEventListener('change', showRequestsWithStatus, false);

$(document).on('click', '#save-button', function() {
  var url = '/admin/requests/';
  var borrow_id;
  $('.select-status').each(function() {
    borrow_id = $(this).data('id');
    if (this.value != 1) {
      $.ajax({
        type:'PATCH',
        url: url + borrow_id,
        data: {
          borrow: {
            status: this.value
          }
        }
      });
    }
  });
  $('#list-borrow-books-view').load(document.URL + '?status=' + 'not_approved' + ' #list-borrow-books');
});
