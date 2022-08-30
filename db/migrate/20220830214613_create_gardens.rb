class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.integer :garden_id
      t.datetime :created_at
      t.datetime :updated_at
      t.string :garden_name
    end
  end
end
