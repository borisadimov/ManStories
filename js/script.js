// Generated by CoffeeScript 1.7.1
(function() {
  var BV, delay, resize, wHeight, wWidth, x, y;

  x = 0;

  y = 0;

  BV = 0;

  wHeight = 0;

  wWidth = 0;

  delay = function(ms, func) {
    return setTimeout(func, ms);
  };

  resize = function() {
    var у;
    clearTimeout(x, y);
    x = delay(180, function() {
      var arrowPadding, arrowSize, fontsize, playSize;
      wHeight = $(window).height();
      wWidth = $(window).width();
      fontsize = wWidth / 560 * 0.8 * 100;
      arrowSize = wWidth / 1400 * 18;
      arrowPadding = wWidth / 1400 * 30;
      playSize = wHeight / $(".black").css("height", wHeight + "px");
      $("body").css("font-size", fontsize + "%");
      $(".arrow img").css({
        "height": arrowSize
      });
      return $(".arrow").css({
        "padding-bottom": arrowPadding
      });
    });
    return у = delay(220, function() {
      return window.myvideo.RESIZE();
    });
  };

  $(document).ready(function() {
    window.myvideo = new $.BigVideo();
    BV = window.myvideo;
    BV.init();
    BV.show('video/river.mp4');
    return resize();
  });

  $(window).resize(function() {
    return resize();
  });

}).call(this);
