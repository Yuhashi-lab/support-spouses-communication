class CreateMustTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :must_todos do |t|
      t.datetime    :deadline
      t.string      :statement
      t.belongs_to  :family, foreign_key: true
      t.integer     :user_id
      t.string      :user_type
      t.string      :personnel
      
      t.timestamps
    end
  end
end
