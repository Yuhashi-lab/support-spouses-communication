class CreateTalkRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :talks do |t|
      t.belongs_to  :family, foreign_key: true
      t.integer     :user_id
      t.string      :user_type
      t.text        :statement
      t.timestamps
    end
  end
end
