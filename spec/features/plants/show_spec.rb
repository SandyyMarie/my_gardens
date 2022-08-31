require 'rails_helper'

RSpec.describe 'the Plants show page' do
    before :each do
        @sandy_garden_1 = Garden.create!(garden_name: "Living Room Oasis", indoor: true, times_watered: 0)
        @sandy_garden_2 = Garden.create!(garden_name: "Faerie Garden", indoor: false, times_watered: 0)
        @plant1 = Plant.create!(watered: false, plant_species: "Monstera", plant_pet_name: "Momma Monstera", sun_rating: 4, garden_id: 1)
        @plant2 = Plant.create!(watered: false, plant_species: "Golden Pothos", plant_pet_name: "Neighbors Gift", sun_rating: 3, garden_id: 1)
        @plant3 = Plant.create!(watered: true, plant_species: "Cactus", plant_pet_name: "Spiky Boi", sun_rating: 5, garden_id: 2)

    end
    it 'displays the plant species' do

        visit "/plants/#{@plant1.id}"
        expect(page).to have_content(@plant1.plant_pet_name)
        expect(page).to_not have_content(@plant2.plant_pet_name)
    end

    it 'displays the garden the plant belongs to' do#will come back do
        visit "/plants/#{@plant1.plant_pet_name}"
        save_and_open_page
        expect(page).to have_content(@sandy_garden_1.garden_name)
    end
end