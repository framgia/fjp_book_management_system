//= require_self

$(document).ready(function () {
  $(document).on('click', '.btn-cancel-request', function () {
    var id = $(this).data('id');
    var status = $(this).attr('value');

    $.ajax({
      beforeSend: function (xhr) {
        xhr.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').attr('content'));
      },
      type: 'PATCH',
      url: '/requests/' + id,
      data: {
        request: {
          id: id,
          status: status
        }
      },
      success: function () {
        $('#requests-list-view').load(document.URL + ' #requests-list');
      }
    });
  });

  $(document).on('click', '.create-request', function() {
    var idTextFieldLink = '#text-field-request-link';
    var idTextAreaContent = '#text-field-request-content';
    var requestType = $('#request-type').find(':selected').text();
    var link = $(idTextFieldLink).val();
    var content = $(idTextAreaContent).val();
    var url = '/requests/';

    $.ajax({
      beforeSend: function (xhr) {
        xhr.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').attr('content'));
      },
      type: 'POST',
      url: url,
      data: {
        request: {
          link: link,
          content: content,
          request_type: requestType
        }
      },
      success: function () {
        $('#success-modal').modal('show');
        $('#requests-list-view').load(document.URL + ' #requests-list');
      }
    });
  });

  $('.modal').on('hidden.bs.modal', function(){
    $(this).find('form')[0].reset();
  });

  $('.show-more span').on('click', function() {
    var $link = $(this);
    var $content = $link.parent().prev('div.text-content');
    var linkText = $link.text();

    $content.toggleClass('short-text, full-text');
    $link.text(getShowLinkText(linkText));

    return false;
  });

  function getShowLinkText(currentText) {
    var newText = '';
    var more = $('#more').attr('id');
    var less = $('#less').attr('id');

    if (currentText == more) {
      newText = less;
    } else {
      newText = more;
    }

    return newText;
  }
});
