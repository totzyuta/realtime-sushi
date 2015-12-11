App.messages = App.cable.subscriptions.create "MessagesChannel",
  received: (data) ->
    $("#messages").append @renderMessage(data)

  renderMessage: (data) ->
    randTop = Math.floor(Math.random() * (document.documentElement.clientHeight + 1))
    randLeft = Math.floor(Math.random() * (document.documentElement.clientWidth + 1))
    "<span style='position: absolute; top: #{randTop}px; left: #{randLeft}px'><b>[#{data.username}]:</b> <img id='sushi' src='#{data.image_path}'></span>"
