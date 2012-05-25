isScrolledIntoView = (elem) ->
  docViewTop = $(window).scrollTop()
  docViewBottom = docViewTop + $(window).height()
  elemTop = $(elem).offset().top
  elemBottom = elemTop + $(elem).height()
  (elemBottom <= docViewBottom) and (elemTop >= docViewTop)

$ ->
  clock = '.clock'
  notification = '.notification'
  message_textarea = 'textarea'

  $(clock).live 'mouseenter mouseout', ->
    others = $("#{clock}[data-id='#{$(@).attr('data-id')}']")
    others.toggleClass 'highlighted'
    if isScrolledIntoView others
      $(notification).hide()    
    else
      $(notification).show()

  $(clock).live 'click', ->
    texta = $(message_textarea)
    texta.val "#{texta.val()} #{$(@).attr('data-id')}"
