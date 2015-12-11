class MessagesController < ApplicationController
  def index
  end

  def create
    Message.create(user_id: message_params[:user_id])
    user = User.find_by(id: message_params[:user_id])

    ActionCable.server.broadcast "messages",
      image_path: "images/emoji/unicode/1f363.png",
      icon_path: user.icon,
      screen_name: user.screen_name,
      username: "@#{user.screen_name}"

    head :ok
  end

  def message_params
    params.require(:message).permit(:user_id)
  end
end
