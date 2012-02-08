#= require json2
#= require jquery
#= require spine
#= require spine/manager
#= require spine/ajax
#= require spine/route

#= require_tree ./lib
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

window.addToHomeConfig = {
  lifespan: 10000
}

class App extends Spine.Controller
  constructor: ->
    super
    
    # Initialize controllers:
    #  @append(@items = new App.Items)
    #  ...
    @append(@notes = new App.Notes)

    Spine.Route.setup(shim: true)

window.App = App

jQuery ($) ->
  new App(el: $('body'))
  window.jQT = new $.jQTouch({})
  
  window.setTimeout ->
    window.jQT.goTo('#notes')
  , 0