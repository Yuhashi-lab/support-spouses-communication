class CreateWantTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :want_todos do |t|
      t.datetime    :deadline
      t.string      :statement
      t.belongs_to  :family, foreign_key: true
      t.integer     :user_id
      t.string      :user_type

      t.timestamps
    end
  end
end
