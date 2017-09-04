class RestaurantsController < ApplicationController
  RESTAURANTS = [
    { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    { name: "Sushi Samba", address: "City, London", category: "japanese" }
  ]
  def index
    @restaurants = RESTAURANTS
  end

  def search
    @category = params[:food_type]
    @restaurants = RESTAURANTS.select {|r| r[:category] == @category }
  end

  def create
     render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}' and category '#{params[:category]}'"
  end
end
