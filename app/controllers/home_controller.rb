class HomeController < ApplicationController
  def index
    @cars = CarSale.includes(:car_location).order("price DESC").limit(10)
  end

  def About
    @pages = Page.all
  end


end
