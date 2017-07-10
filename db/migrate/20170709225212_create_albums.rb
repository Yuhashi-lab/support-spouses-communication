class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :image
      t.belongs_to :family, foreign_key: true
      t.integer :user_id
      t.string :user_type

      t.timestamps
    end
  end
end
