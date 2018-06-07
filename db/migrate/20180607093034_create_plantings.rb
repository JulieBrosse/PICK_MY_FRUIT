class CreatePlantings < ActiveRecord::Migration[5.1]
  def change
    create_table :plantings do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :price_kind
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
