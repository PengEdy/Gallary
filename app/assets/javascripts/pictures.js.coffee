# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).foundation({
  orbit: {
    animation: 'fade',
    timer_speed: 4500,
    pause_on_hover: false,
    animation_speed: 400,
    navigation_arrows: false,
    bullets: false,
    slide_number: false
  }
})

$ ->
  $('.btn').click ->
    if $(this).text() is "More"
      $(this).text("Hide")
    else
      $(this).text("More")
    $('.pic-info').toggle()

  $('.orbit-caption').hide()

  $('.example-orbit').mouseover ->
    $('.orbit-caption').show()
  $('.example-orbit').mouseout ->
    $('.orbit-caption').hide()
