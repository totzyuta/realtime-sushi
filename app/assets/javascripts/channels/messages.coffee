App.messages = App.cable.subscriptions.create "MessagesChannel",
  received: (data) ->
    $("#messages").append @renderMessage(data)

  renderMessage: (data) ->
    randTop = Math.floor(Math.random() * (document.documentElement.clientHeight + 1))
    randLeft = Math.floor(Math.random() * (document.documentElement.clientWidth + 1))
    "<span style='position: absolute; top: #{randTop}px; left: #{randLeft}px'><img id='sushi' src='#{data.image_path}' style='width: 20px; height: 20px;'></span>"
