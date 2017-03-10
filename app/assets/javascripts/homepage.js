$(window).scroll(function(){

  var wScroll = $(this).scrollTop();
if(wScroll > $('#about-us').offset().top - ($(window).height() / 1.4) && ($("#about-us").attr("class") != "is-visible")) {

$('#about-us').attr("class","is-visible about-us");


}


});
