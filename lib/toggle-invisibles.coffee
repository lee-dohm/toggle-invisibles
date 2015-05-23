#
# Copyright (c) 2014-2015 by Lifted Studios. All Rights Reserved.
#

toggleBoth = ->
  if atom.config.get('editor.showInvisibles') and atom.config.get('editor.showIndentGuide')
    atom.config.set 'editor.showInvisibles', no
    atom.config.set 'editor.showIndentGuide', no
  else
    atom.config.set 'editor.showInvisibles', yes
    atom.config.set 'editor.showIndentGuide', yes

toggleInvisibles = ->
  atom.config.set('editor.showInvisibles', (not atom.config.get('editor.showInvisibles')))

toggleIndentGuide = ->
  atom.config.set('editor.showIndentGuide', (not atom.config.get('editor.showIndentGuide')))

module.exports =
  activate: ->
    @disposables = atom.commands.add 'atom-workspace',
      'toggle-invisibles:toggle': -> toggleInvisibles()
      'toggle-invisibles:toggle-both': -> toggleBoth()
      'toggle-invisibles:toggle-invisibles': -> toggleInvisibles()
      'toggle-invisibles:toggle-indent-guide': -> toggleIndentGuide()

  deactivate: ->
    @disposables.dispose()