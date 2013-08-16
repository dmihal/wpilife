# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('.remote_posting').bind("ajax:success",(evt, data, status, xhr) ->
                            $("#postContainer h1").text(data.title);
                            $("#postContainer div").html(data.content);
  )
