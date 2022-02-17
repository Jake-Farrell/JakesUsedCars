class HomeController < ApplicationController
  def index
    @cars = CarSale.includes(:car_model).order("price DESC").limit(10)

  end

  def About
    @pages = Page.all
  end


end
