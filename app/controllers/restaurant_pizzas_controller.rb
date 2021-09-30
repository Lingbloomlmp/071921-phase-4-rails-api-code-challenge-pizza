class RestaurantPizzasController < ApplicationController

    def create 
        restaurant_pizza = RestaurantPizza.create(params.permit(:pizza_id, :restaurant_id, :price))
        if restaurant_pizza 
            render json: restaurant_pizza.pizza.to_json, status: :created
        else
            render json: {errors: "validation errors"}, status: 422 
        end
    end
end
