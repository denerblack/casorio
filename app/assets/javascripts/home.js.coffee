# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.checked').each ->
    if $(this).attr('checked') == 'checked'
      $(this).attr('disabled', true)

$(document).on "change", ".checked", ->
  $this = $(this)
  $.ajax({
    url: $(this).attr('url'),
    data: { checked: $(this).is(':checked'), gift_list_id: $(this).attr('gift_list_id') }
  })
  $this.attr('disabled', true)
