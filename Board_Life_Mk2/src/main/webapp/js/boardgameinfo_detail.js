$(function() {
  $('ul.tab_tit li').click(function() {
    var onTab = $(this).attr('data-tab');
    $('ul.tab_tit li').removeClass('on');
    $('.cnt').removeClass('on');
    $(this).addClass('on');
    $('#' + onTab).addClass('on');
  })
});