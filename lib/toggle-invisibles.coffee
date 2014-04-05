#
# Copyright (c) 2014 by Lifted Studios. All Rights Reserved.
#

toggle = ->
  atom.config.toggle('editor.showInvisibles')

module.exports =
  activate: (state) ->
    atom.workspaceView.command 'toggle-invisibles:toggle', ->
      toggle()
