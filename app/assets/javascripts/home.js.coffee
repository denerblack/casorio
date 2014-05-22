# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  #$('.editable').each ->
#    console.log($(this))
    #if $(this).attr('checked') == 'checked'
    # $(this).attr('disabled', true)

#  $('.editable').editable {
#    type: 'text',
#    title: 'Seu nome',
#    pk: 1,
#    placement: 'top',
#    success: (response, newValue) -> {
#      userModel.set('a', newValue)
#    }
#  }
  $("[data-xeditable=true]").each ->
    $(@).editable
      ajaxOptions:
        type: "PUT"
        dataType: "json"
        params: (params) ->
          railsParams = {}
          railsParams[$(@).data("model")] = {}
          railsParams[$(@).data("model")][params.name] = params.value
          console.log(params)

          return railsParams


$(document).on "change", ".checked", ->
  $this = $(this)
  $.ajax({
    url: $(this).attr('url'),
    data: { checked: $(this).is(':checked'), gift_list_id: $(this).attr('gift_list_id') }
  })
  $this.attr('disabled', true)


