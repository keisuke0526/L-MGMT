$(function($) {
  $(".clickable-row").click(function() {
      location.href = $(this).data("href");
  });
});