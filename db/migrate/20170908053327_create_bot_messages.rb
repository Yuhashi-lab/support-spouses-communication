class CreateBotMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :bot_messages do |t|
      t.text :message
      t.string :message_type
      t.date :target_start_date
      t.date :target_end_date
      t.integer :child_min_month
      t.integer :child_max_month
      t.string :url
      t.timestamps
    end
  end
end
