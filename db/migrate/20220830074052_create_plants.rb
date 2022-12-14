class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.timestamps #creates created and updated at
      t.boolean :watered
      t.string :plant_species
      t.string :plant_pet_name
      t.integer :sun_rating
    end
  end
end
