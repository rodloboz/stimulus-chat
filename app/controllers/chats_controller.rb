class ChatsController < ApplicationController
  def index
    @chats = Chat.involving(current_user)
  end

  def show
    @chat = Chat.find(params[:id])
    @chats = Chat.involving(current_user)
    @other_user = @chat.other_user(current_user)
    @messages = @chat.messages
                     .order(created_at: :asc)
                     .last(20)
    @message = Message.new
  end

  def create
    @chat = Chat.between(params[:sender_id], params[:recipient_id])
                .first_or_create!(chat_params)

    redirect_to @chat
  end

  private

  def chat_params
    params.permit(:sender_id, :recipient_id)
  end
end