class AddCordinatesToPlantings < ActiveRecord::Migration[5.1]
  def change
    add_column :plantings, :latitude, :float
    add_column :plantings, :longitude, :float
  end
end
