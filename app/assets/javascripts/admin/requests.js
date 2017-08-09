//= require_self

$(document).on('click', '.change-status', function() {
  var requestId = $(this).data('id');
  var url = '/admin/requests/' + requestId;
  var statusId = '#status-request-id-' + requestId;
  var status = this.value;

  $.ajax({
    type:'PATCH',
    url: url,
    data: {
      borrow_books: {
        status: status
      }
    },
    success: function () {
      if (status == 'approved') {
        $(statusId).empty().append('<div class="alert alert-success" role="alert">\
        <a class="alert-link">\
        Approved\
        </a></div>' );
      } else {
        $(statusId).empty().append('<div class="alert alert-danger" role="alert">\
        <a class="alert-link">\
        Reject\
        </a></div>' );
      }
    }
  });
});

var select = document.getElementsByClassName('status-selected');
select[0].addEventListener('change', showRequestsWithStatus, false);

function showRequestsWithStatus() {
  var status = this.value;
  var url = '/admin/requests';
  $.ajax({
    type:'GET',
    url: url,
    data: {
      status: status
    },
    success: function () {
      location.reload();
    }
  });
}
