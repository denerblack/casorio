# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

calcTotal = ->
  $('#total').val($("#expense_amount").val() * $('#expense_unit_value').val())

$(document).on 'blur', '#expense_amount', ->
  $('#total').val($("#expense_amount").val() * $('#expense_unit_value').val())

$(document).on 'blur', '#expense_unit_value', ->
  $('#total').val($("#expense_amount").val() * $('#expense_unit_value').val())
