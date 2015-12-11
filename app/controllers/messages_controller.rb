class MessagesController < ApplicationController
  def index
  end

  def create
    @message = Message.new(message_params)
    @message.save!

    ActionCable.server.broadcast "messages",
      image_path: "images/emoji/unicode/1f363.png",
      username: params[:message][:username]

    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:username, :body)
  end
end
