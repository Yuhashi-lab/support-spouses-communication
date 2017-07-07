class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.date :birthday
      t.belongs_to :family

      t.timestamps
    end
  end
end
