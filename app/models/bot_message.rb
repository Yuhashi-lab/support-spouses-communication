class BotMessage < ApplicationRecord
  has_many :message_histories

  def schedule_message; end
end
