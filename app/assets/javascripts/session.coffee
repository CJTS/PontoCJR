$ ()->
  $("form.loginForm").on "ajax:success", (event, xhr, status, error) ->
    alert("oi")