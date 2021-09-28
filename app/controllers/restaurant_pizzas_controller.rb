class RestaurantPizzasController < ApplicationController

    def index
        render json: RestaurantPizzas.all
    end

    def show
        menu = RestaurantPizzas.find(params[:id])
        render json: menu, include: :
    end
end
