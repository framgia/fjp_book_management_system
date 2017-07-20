// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery/dist/jquery.min
//= require bootstrap/dist/js/bootstrap.min
//= require propellerkit/dist/js/propeller.min
//= require_tree ./users
//= require_tree ./admin
//= require jquery
//= require jquery_ujs
//= require jquery-ui

$(document).on('click', '.save-user', function() {
  alert("dmm")
  var userId = $(this).data('id');
  var idEmailTextField = '#text-field-mail-' + userId;

  var newEmail = $(idEmailTextField).val();
  var url = '/admin/user/' + userId;

  $.ajax({
    type:'PATCH',
    url: url,
    data: {
      user: {
        id: userId,
        email: newEmail
      }
    }
  }).success(function(){
    $('#users-list-view').load(document.URL + ' #users-list');
  });
});

$(document).on('click', '.delete-user', function() {
  var userId = $(this).data('id');
  var idEmailTextField = '#text-field-mail-' + userId;

  var newEmail = $(idEmailTextField).val();
  var url = '/admin/user/' + userId;

  $.ajax({
    type:'DELETE',
    url: url,
    data: {
      user: {
        id: userId,
        email: newEmail
      }
    }
  }).success(function(){
    $('#users-list-view').load(document.URL + ' #users-list');
  });
});
