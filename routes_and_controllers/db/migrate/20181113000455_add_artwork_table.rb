class AddArtworkTable < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork do |t|
      t.string :title, null: false 
      t.string :image_url
      t.integer :artist_id, null: false
    end 
  end
end
