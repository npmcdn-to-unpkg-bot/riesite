// Animate loader off screen
$(window).load(function() {
  $(".imageLoad").fadeOut("slow");
  // $(".handle").trigger("mousedown");

});

$(window).load(function(){
  $('.grid').masonry({
    itemSelector: '.grid-item',
    isResizable: true
  });
});


$(document).ready(function() {

// Navbar hidden
// if ($('.banner').length > 0){
//   $(".navbar").hide();
//     $(window).scroll(function () {
//   // set distance user needs to scroll before we fadeIn navbar
//       if ($(this).scrollTop() > 50) {
//         $('.navbar').fadeIn();
//       } else {
//         $('.navbar').fadeOut();
//       }
//     });
//   }

// 1. Animations in Social Media Links
  var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
  $('.social-media').on('mouseover', function() {
    $(this).addClass('animated rotateIn').one(animationEnd, function() {
      $(this).removeClass('animated ' + 'rotateIn');
    });
  });

// 2. Swal for like/dislike actions
  $('.like').on('click', function() {
    swal({
      title: "You Love It",
      text: "Now it's in your WishList",
      timer: 90000,
      showConfirmButton: true
    });
  });

  $('.dislike').on('click', function() {
    swal({
      title: "You remove it from your wish list",
      text: "Click again to add it",
      timer: 90000,
      showConfirmButton: true
    });
  });


// 3. Re-size Background-image
  var leftWidth = $(".left").width();
  var bannerClicked = false;

  $(".banner").on("mousedown", function() {
    if (bannerClicked) {
      bannerClicked = false;
    }
    bannerClicked = true;
  });

  $(document).on("mouseup", function() {
    bannerClicked = false;
  });

  $(".banner").on("mousemove", function(e) {
    if (!bannerClicked) {
      return;
    }
    $(".handle").css("left", e.screenX);
    $(".left").width(e.screenX);
  });
});
