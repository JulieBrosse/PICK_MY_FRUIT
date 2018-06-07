class CreateHarvests < ActiveRecord::Migration[5.1]
  def change
    create_table :harvests do |t|
      t.references :planting, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :total_price
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
