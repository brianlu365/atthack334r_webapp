App.bin = App.cable.subscriptions.create "BinChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert data['name']
    # Called when there's incoming data on the websocket for this channel

  recycle: ->
    @perform 'recycle'
