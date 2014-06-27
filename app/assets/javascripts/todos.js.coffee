$('document').on 'click', '.edit_task input[type=checkbox]', ->
    $(this).parent('form').submit()


$(document).on "page:change", ->
  $("#new_todo").on("ajax:success", (e, data, status, xhr) ->
    $("#new_todo").append xhr.responseText
    ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_todo").append "<p>ERROR</p>"

$ ->
  $("a[data-remote]").on "ajax:success", (e, data, status, xhr) ->
    alert "The post was deleted."

