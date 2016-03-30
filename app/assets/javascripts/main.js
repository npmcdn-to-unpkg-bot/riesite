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



$(document).ready(function() {
  $('.like').on('click', function() {
    swal({title: "You Love It",
         text: "Now it's in your WishList",
         timer: 90000,
        showConfirmButton: true});
    });
  });

$(document).ready(function() {
  $('.dislike').on('click', function() {
    swal({title: "You remove it from your wish list",
         text: "Click again to add it",
         timer: 90000,
        showConfirmButton: true});
  });
});
