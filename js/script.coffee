
#Global
x=0
y=0
BV = 0
wHeight = 0
wWidth = 0
#/Global


#functions

delay = (ms, func) -> setTimeout func, ms


resize = () ->
  clearTimeout(x,y)
  x = delay 180, ->
    wHeight = $(window).height()
    wWidth = $(window).width()
    fontsize = wWidth/560 *0.8 *100
    arrowSize = wWidth/1400 *18
    arrowPadding = wWidth/1400 *30
    playSize = wHeight/
    $(".black").css("height",wHeight+"px")
    $("body").css("font-size", fontsize+"%")
    $(".arrow img").css({"height" : arrowSize})
    $(".arrow").css({"padding-bottom" : arrowPadding})

  у = delay 220,  ->
    window.myvideo.RESIZE()


#/functions



#Initial

$(document).ready ->
  window.myvideo = new $.BigVideo()
  BV = window.myvideo
  BV.init()
  BV.show('video/river.mp4')
  do resize
#/Initial



#events

$(window).resize ->
  do resize

#/events

