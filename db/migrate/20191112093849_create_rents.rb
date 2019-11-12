class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :tiny_house, foreign_key: true

      t.timestamps
    end
  end
end
