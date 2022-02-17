class CarsController < ApplicationController
  def index
    @cars = CarSale.includes(:car_location).order("price DESC").limit(20)
  end

  def show
  @car = CarSale.find(params[:id])
  #@car = CarSale.find(21031)
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @movies = Movie.where("title LIKE ? ",wildcard_search)
  end

end
