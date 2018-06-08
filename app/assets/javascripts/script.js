granimInstance = new Granim({
    element: '#granim-canvas',
    name: 'basic-gradient',
    direction: 'left-right',
    opacity: [1, 1],
    isPausedWhenNotInView: true,
    states : {
        "default-state": {
            gradients: [
                ['#81e5c9', '#b4fffc'],
                ['#4db298', '#81e5c9'],
                ['#4db298', '#b4fffc']
            ],
            transitionSpeed: 2000
        }
    }
});

$(document).ready(function() {
  $("h3,strong,.glitch").lettering();
});

h = function(p, v) {
  return Math.random() < p ? Math.random() : v;
};

lock = false;
$(document).on("scroll", function() {
  if (!lock) {
    lock = true;
    $("span").each(function(index) {
      $(this).css({
        color: "rgba(0,0,0," + h(0.6, 1) + ")",
        background: "rgba(0,0,0," + h(0.02, 0) + ")"
      });
    });
    setTimeout(function() {
      lock = false;
      $("span").css({ background: "", color: "" });
    }, 150);
  }
});

setInterval(function() {
  $("#cursor").toggle();
}, 1000);