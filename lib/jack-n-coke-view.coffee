{View} = require 'atom'

module.exports =
class JackNCokeView extends View
  @content: ->
    @div class: 'jack-n-coke overlay from-top', =>
      @div "The JackNCoke package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "jack-n-coke:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "JackNCokeView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
