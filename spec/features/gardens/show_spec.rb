require 'rails_helper'

RSpec.describe 'the plants show page' do
    it 'displays the plant species' do
        @plant = Plant.create!(watered: false, plant_species: "Monstera", plant_pet_name: "Momma Monstera", sun_rating: 4, assigned_garden: 1)

        visit "/plants/#{@plant.id}"
    end

    it 'displays the plant pet name' #will come back
end