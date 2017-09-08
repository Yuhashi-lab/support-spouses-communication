class CreateMessageHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :message_histories do |t|
      t.belongs_to :family, foreign_key: true
      t.belongs_to :bot_message, foreign_key: true

      t.timestamps
    end
  end
end
