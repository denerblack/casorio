# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  console.log("DSFSDFDSFDSFDSFDSZFEWS")

$(document).on "change", ".checked", ->
  $this = $(this)
  $.ajax({
    url: $(this).attr('url'),
    data: { mandatory: $(this).is(':checked'), field_form_id: $(this).attr('gift_list_id') }
  })
