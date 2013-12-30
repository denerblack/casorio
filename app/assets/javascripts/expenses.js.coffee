# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  #alert('aqui');
  $('#expense_amount').blur ->
    $('#total').val($(this).val() * $('#expense_unit_value').val());
