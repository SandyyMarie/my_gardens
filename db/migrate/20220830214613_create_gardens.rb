class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.timestamps #creates created and updated at
      t.string :garden_name
    end
  end
end
