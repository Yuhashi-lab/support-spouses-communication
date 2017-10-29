class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name,       null:false
      t.date :birthday,     null:false
      t.belongs_to :family, null:false

      t.timestamps
    end
  end
end
