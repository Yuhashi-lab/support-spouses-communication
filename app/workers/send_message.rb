class SendMessage < ApplicationController
  include Sidekiq::Worker

  def perform(child_id)
    BotMessage.compellation(child_id)
    SendMessage.perform_at(24.hours, child_id)
  end
end
