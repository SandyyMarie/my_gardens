class GardensController < ApplicationController
    def index
        @gardens = Garden.all
    end

    def show
        
    end

end