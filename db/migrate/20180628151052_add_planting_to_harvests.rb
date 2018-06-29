class AddPlantingToHarvests < ActiveRecord::Migration[5.1]
  def change
    add_reference :harvests, :planting, foreign_key: true
  end
end
