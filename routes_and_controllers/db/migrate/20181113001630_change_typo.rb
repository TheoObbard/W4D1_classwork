class ChangeTypo < ActiveRecord::Migration[5.2]
  def change
    #change table artwork to artworks 
    rename_table :artwork, :artworks

  end
end
