class AddCoordinatesToTinyHouse < ActiveRecord::Migration[5.2]
  def change
    add_column :tiny_houses, :latitude, :float
    add_column :tiny_houses, :longitude, :float
  end
end
