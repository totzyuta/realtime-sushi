App.messages = App.cable.subscriptions.create "MessagesChannel",
  received: (data) ->
    $("#messages").append @renderMessage(data)

  renderMessage: (data) ->
    "<p><b>[#{data.username}]:</b> <image src='#{data.image_path}'>"
