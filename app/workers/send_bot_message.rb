class SendBotMessage < ApplicationController
  include Sidekiq::Worker

  def perform(family_id)
    #bule exec sidekiq default
    p "やった"
    BotMessage.send_message(family_id)
    SendBotMessage.perform_at(24.hours, family_id)
  end
end
