class GardensController < ApplicationController
    def index
        @gardens = Garden.all
    end

    def show
        @garden = Garden.find(params[:id])
    end

    def create
        garden = Garden.create(garden_params)
        rediect_to "/plants"
    end

    def destroy
        garden = Garden.find(params[:id])
        garden.destroy
        redirect_to "/gardens"
    end
private
  def garden_params
    params.permit(:garden_name)
  end

end