$(function () {
  toggleMenu();

  function toggleMenu() {
    $(".menuTitle").click(function () {
      $(this).children().toggleClass("rotate");
      $(this).next().slideToggle();
    });
  }
});