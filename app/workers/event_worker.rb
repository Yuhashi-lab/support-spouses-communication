class EventWorker
  include Sidekiq::Worker
  sidekiq_options queue: :event

  def perform(_message_id, _family_id)
    BotMessage.send(id)
    # 日にち、子供の年齢を条件に絞って全部配信済みなら緩めてく
    # あと配信したかどうかのステータス
    # bundle exec sidekiq -C config/sidekiq.yml
  end
end
