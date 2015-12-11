class MessagesController < ApplicationController
  def index
  end

  def create
    ActionCable.server.broadcast "messages",
      image_path: "images/emoji/unicode/1f363.png",
      username: params[:message][:username]

    head :ok
  end
end
