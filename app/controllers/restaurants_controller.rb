class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]
  
  
  def index
    @restaurants = Restaurant.all
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else 
      flash[:message] = @restaurant.errors.full_messages
      render :edit
    end
  end


  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :pizza_ids)
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end
