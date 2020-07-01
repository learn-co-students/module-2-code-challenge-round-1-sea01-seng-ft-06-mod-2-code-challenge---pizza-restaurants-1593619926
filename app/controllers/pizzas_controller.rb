class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizzas = Pizza.find(params[:id])
  end 

  def new
    @pizzas = Pizza.new
  end 

  def create
    # byebug
    @pizzas = Pizza.new(pizza_params)
    # byebug
    if  @pizzas.save
      redirect_to pizza_path(@pizzas)
      # byebug
    else 
      render :new
      flash[:message] = @pizzas.errors.full_messages
    end 
  end 

  private

  def pizza_params
    params.require(:pizza).permit(:name,:ingredients)
  end 
  
end
