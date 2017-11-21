class BotMessage < ApplicationRecord
  has_many :message_histories

  def self.compellation(child_id)
    child = Child.find(child_id)
    message = BotMessage.where(message_type: "compellation")
                        .where.not(id: MessageHistory.where(family_id: child.family_id).pluck(:bot_message_id)).sample()
    if message.present?
      Talk.create(family_id: child.family_id, user_id: 100, user_type: "Hasband", statement: "#{message.message}")
      MessageHistory.create(family_id: child.family_id, bot_message_id: message.id)
    end
  end


  def self.send_message(child_id)
    child = Child.find(child_id)
    today = Date.today
    postnatal_months = (Date.today.year - child.birthday.year) * 12 +
                       (Date.today.month - child.birthday.month)
    # 候補になるメッセージを生後月数と過去の送信履歴で絞り込み
    messages = BotMessage.where(['child_min_month <= ? AND child_max_month >= ?', postnatal_months, postnatal_months])
                          .where(message_type: "pippi")
                         .where.not(id: MessageHistory.where(family_id: child.family_id).pluck(:bot_message_id))
    # 今日、今月が締め切りのメッセージ
    bot_message = get_deadline_message(messages, today, postnatal_months)
    # ランダム取得
    bot_message = messages.sample if bot_message.blank?

    if bot_message.present?
      Talk.create(family_id: child.family_id, user_id: 100, user_type: "Hasband", statement: "#{bot_message.message}\r\n#{bot_message.url}")
      MessageHistory.create(family_id: child.family_id, bot_message_id: bot_message.id)
    end
  end

  private
  def self.get_deadline_message(messages, today, postnatal_months)
    # 今日締め切りのを優先
    m = messages.find_by(target_end_date: today)

    return m if m.present?

    # 今月締め切りのもの
    m = messages.find_by(child_max_month: postnatal_months)
    return m if m.present?
  end
end
