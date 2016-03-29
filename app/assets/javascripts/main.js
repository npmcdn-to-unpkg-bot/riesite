$(document).ready(function() {
  var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
  $('.social-media').on('mouseover', function() {
    $(this).addClass('animated rotateIn').one(animationEnd, function() {
      $(this).removeClass('animated ' + 'rotateIn');
    });
  });
});

// if($('body.pages').length === 0){
//   return;
// }
