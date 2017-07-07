class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.belongs_to :hasband, foreign_key: true
      t.belongs_to :wife, foreign_key: true

      t.timestamps
    end
  end
end
