class AddPhotoToTinyHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :tiny_houses, :photo, :string
  end
end
