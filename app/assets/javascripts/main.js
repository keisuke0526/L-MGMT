$(function($) {
  $(document).on('click','.clickable-row', function() {
      location.href = $(this).data("href");
  });
});