class AddPhotoToPlantings < ActiveRecord::Migration[5.1]
  def change
    add_column :plantings, :photo, :string
  end
end
