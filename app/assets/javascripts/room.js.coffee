$ ->
  clock = 'clock'
  $(".#{clock}").live 'mouseenter mouseout', ->
    $(".#{clock}[data-id='#{$(@).attr('data-id')}']").toggleClass 'highlighted'
