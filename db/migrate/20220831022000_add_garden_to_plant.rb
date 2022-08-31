class AddGardenToPlant < ActiveRecord::Migration[5.2]
  def change
    add_reference :plants, :garden, foreign_key: true
  end
end
