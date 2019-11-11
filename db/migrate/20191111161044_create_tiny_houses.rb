class CreateTinyHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :tiny_houses do |t|
      t.references :owner, foreign_key: {to_table: :users}
      t.string :title
      t.string :location
      t.integer :travellers_number
      t.integer :price
      t.string :description
      t.integer :bed_number
      t.integer :bedroom_number
      t.string :wifi
      t.string :kitchen
      t.string :sauna

      t.timestamps
    end
  end
end
