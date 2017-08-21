//= require select2/dist/js/select2.min
//= require propellerkit/components/select2/js/pmd-select2
//= require cocoon
//= require jquery.purr
//= require best_in_place
//= require_self

$(document).ready(function() {
  $('.select-books').select2({
    tags: false,
    theme: 'bootstrap'
  });

  $('.best_in_place').best_in_place();
  $('.best_in_place').change(function() {
    $.ajax({
      success: function() {
        location.reload();
      }
    });
  });

  $('.upload-image').on('change', function(){
    var preview = document.querySelector('#preview');
    var files = document.querySelector('input[type=file]').files;

    function readAndPreview(file) {
      if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) {
        var reader = new FileReader();
        reader.addEventListener('load', function () {
          var image = new Image();
          image.title = file.name;
          image.src = this.result;
          preview.appendChild( image );
        }, false);
        reader.readAsDataURL(file);
        $('#old-avatar').hide();
      }
    }
    if (files) {
      [].forEach.call(files, readAndPreview);
    }
  });


  function readURL(input) {
    if (input.files && input.files[0]) {
      if (/\.(jpe?g|png|gif)$/i.test(input.files[0].name)) {
        var reader = new FileReader();
        reader.onload = function(e) {
          $('#previewHolder').attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
      } else {
        alert($('#error').attr('value'));
      }
    }
  }
  $('#filePhoto').change(function() {
    readURL(this);
    $('#old-avatar').hide();
  });
});
