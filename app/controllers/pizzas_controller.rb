class PizzasController < ApplicationController

    def index
        render json: Pizza.all, status: 200
    end

    def show
        pizza = Pizza.find(params[:id])
        render json: pizza 
    end
end
