class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    # byebug
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    
    redirect_to restaurant_path(@restaurant)
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :pizza_id)
  end

end
