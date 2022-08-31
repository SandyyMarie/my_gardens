class PlantsController < ApplicationController
    def index
        @plants = Plant.all
    end

    def show
        @plant = Plant.find(params[:id])
    end

    def new

    end

    def create
        plant = Plant.create(plant_params)
        rediect_to "/plants"
    end

    def edit
        @plant = Plant.find(params[:id])
    end

    def update
        plant = Plant.find(params[:id])
        plant.update(plant_params)
        redirect_to "/plants"
    end

    def destroy
        plant = Plant.find(params[:id])
        plant.destroy
        redirect_to "/plants"
    end
private
  def plant_params
    params.permit(:plant_pet_name)
  end
end