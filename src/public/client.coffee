

window.init = () ->
  x = document.getElementById 'screenbox'
  x.innerHTML = "" + new Date().getTime()
