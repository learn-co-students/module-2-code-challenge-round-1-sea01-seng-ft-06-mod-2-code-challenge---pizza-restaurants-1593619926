class RestaurantpizzasController < ApplicationController

    def show
        @restaurantpizza = RestaurantPizza.find(params[:id])
    end
end



