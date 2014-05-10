
#Global
x=0;
y=0;
BV = 0;
#/Global


#functions
delay = (ms, func) -> setTimeout func, ms
#/functions



#Initial
window.myvideo = new $.BigVideo()
BV = window.myvideo
BV.init()
BV.show('video/river.mp4')
wHeight = $(window).height()

$(".black").css("height",wHeight+"px")

wWidth = $(window).width()
fontsize = wWidth/560 *0.7 *100
$("body").css("font-size", fontsize+"%")
#/Initial







$(window).resize ->
  clearTimeout(x,y)
  x = setTimeout ->
    wHeight = $(window).height()
    $(".black").css("height",wHeight+"px")
    wWidth = $(window).width()
    fontsize = wWidth/560 *0.7 *100
    $("body").css("font-size", fontsize+"%")
  ,180
  у = setTimeout ->
    window.myvideo.RESIZE()
  ,220