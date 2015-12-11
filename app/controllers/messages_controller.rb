class MessagesController < ApplicationController
  def index
  end

  def create
    ActionCable.server.broadcast "messages",
      message: params[:message][:body],
      username: params[:messages][:username]

    head :ok
  end
end
