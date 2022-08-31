require "rails_helper"

RSpec.describe 'As a Visitor' do
    describe 'When I visit "/gardens"' do #parent
        before :each do
            @indoor_garden = Garden.create!()
            @outdoor_garden = Garden.create!()
            @plant1 = Plant.create!(watered: false, plant_species: "Monstera", plant_pet_name: "Momma Monstera", sun_rating: 4, assigned_garden: 1)
            @plant2 = Plant.create!(watered: false, plant_species: "Golden Pothos", plant_pet_name: "Neighbors Gift", sun_rating: 3, assigned_garden: 1)
            @plant3 = Plant.create!(watered: true, plant_species: "Cactus", plant_pet_name: "Spiky Boi", sun_rating: 5, assigned_garden: 2)


        end
        it 'I see the name of each parent record in the system' do
            
        end
    end
end