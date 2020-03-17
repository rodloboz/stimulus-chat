class MessagesController < ApplicationController
  before_action :set_chat

  def create
    @message = @chat.messages.new(message_params)
    @message.user = current_user
    if @message.save
      redirect_to chat_path(@chat)
    end
  end

  private

  def set_chat
    @chat = Chat.find(params[:chat_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end