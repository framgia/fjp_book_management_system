$(document).on('click', '.save-user', function() {
  var userId = $(this).data('id');
  var idEmailTextField = '#text-field-mail-' + userId;
  var idPasswordField = '#text-field-password-' + userId;
  var idPasswordConfirmField = '#text-field-password-confirm-' + userId;
  var newEmail = $(idEmailTextField).val();
  var newPassword = $(idPasswordField).val();
  var newPasswordConfirm = $(idPasswordConfirmField).val();
  var url = '/admin/users/' + userId;

  $.ajax({
    type:'PATCH',
    url: url,
    data: {
      user: {
        id: userId,
        email: newEmail,
        password: newPassword,
        password_confirmation: newPasswordConfirm,
      }
    }
  }).success(function(){
    $('#users-list-view').load(document.URL + ' #users-list');
  });
});

$(document).on('click', '.delete-user', function() {
  var userId = $(this).data('id');

  var url = '/admin/users/' + userId;

  $.ajax({
    type:'DELETE',
    url: url,
    data: {
      user: {
        id: userId,
      }
    }
  }).success(function(){
    $('#users-list-view').load(document.URL + ' #users-list');
  });
});

$(document).on('click', '.create-user', function() {
  var idEmailTextField = '#text-field-mail-';
  var idPasswordField = '#text-field-password-';
  var idPasswordConfirmField = '#text-field-password-confirm-';
  var newEmail = $(idEmailTextField).val();
  var newPassword = $(idPasswordField).val();
  var newPasswordConfirm = $(idPasswordConfirmField).val();
  var url = '/admin/users';

  $.ajax({
    type:'POST',
    url: url,
    data: {
      user: {
        email: newEmail,
        password: newPassword,
        password_confirmation: newPasswordConfirm,
      }
    }
  }).success(function(){
    $('#users-list-view').load(document.URL + ' #users-list');
    $('#number-users-view').load(document.URL + ' #number-users');
  });
});
