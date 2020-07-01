class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def create 
    @pizza = Pizza.new(params[:id])
    @pizza.save
    # redirect_to pizza_path(pizza_params[:id])
  end
end
#   private
#   def pizza_params
#   params.require(:pizza).permit(:name, :ingrediants)
# end