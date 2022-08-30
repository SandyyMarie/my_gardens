class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.integer :plant_id
      t.timestamps #creates created and updated at
      t.boolean :watered
      t.string :plant_species
      t.string :plant_pet_name
      t.string :sun_rating
      t.integer :assigned_garden
    end
  end
end
