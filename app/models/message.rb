class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat

  validates_presence_of :body, :chat_id, :user_id

  def day
    today = Time.zone.now.beginning_of_day
    if created_at < today - 6.days
      created_at.strftime("%d/%m/%y")
    elsif created_at < today - 1.day
      created_at.strftime("%A")
    elsif created_at > today
      "today"
    else
      "yesterday"
    end
  end

  def message_time
    created_at.strftime("%H:%M")
  end
end