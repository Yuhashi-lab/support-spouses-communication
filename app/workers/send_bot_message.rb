class SendBotMessage < ApplicationController
  include Sidekiq::Worker

  def perform(child_id)
    #bundle exec sidekiq default
    BotMessage.send_message(child_id)
    SendBotMessage.perform_at(24.hours, child_id)

  end
end
