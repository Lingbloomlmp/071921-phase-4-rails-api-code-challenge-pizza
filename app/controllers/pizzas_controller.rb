class PizzasController < ApplicationController

    def index
        render json: Pizzas.all
    end

    def show
        pizza = Pizzas.find(params[:id])
        render json: pizza 
    end
end
