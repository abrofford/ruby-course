class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  end

  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:restaurant_name, :comment))
    @restaurant.save
    redirect_to @restaurant
  end

  # private
  #   def restaurant_params
  #     params.require(:restaurant_name).permit(:restaurant_name, :comment)
  #   end
end
