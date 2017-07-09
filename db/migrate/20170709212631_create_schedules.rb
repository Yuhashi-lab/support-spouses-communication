class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.datetime :datetime
      t.string :statement
      t.belongs_to :family, foreign_key: true
      t.integer :user_id
      t.string :user_type

      t.timestamps
    end
  end
end
