class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat

  validates_presence_of :body, :chat_id, :user_id

  def message_time
    if created_at >= 1.minute.ago
      'now'
    elsif created_at >= Time.zone.now.beginning_of_day
      "#{ActionController::Base.helpers.time_ago_in_words(created_at)} ago"
    else
      created_at.strftime("%d %b, %Y")
    end
  end
end