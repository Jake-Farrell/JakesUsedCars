class HomeController < ApplicationController
  def index
    @cars = CarSale.includes(:car_location).order("price DESC").limit(10)
  end
end
