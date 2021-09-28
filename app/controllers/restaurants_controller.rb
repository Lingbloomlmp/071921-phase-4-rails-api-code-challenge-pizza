class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :restaurant_not_found

    def index
        render json: Restaurant.all
    end
    
    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, include: :pizzas
    end

    private

    def restaurant_not_found
        render json: {"error": "Restaurant not found"}, status: 404
    end
end
