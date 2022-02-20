class SellersController < ApplicationController
  def index
    @sellers = CarSeller.includes(:car_sales).order("name DESC").limit(20)
  end

  def show
  @seller = CarSeller.find(params[:id])
  #@car = CarSale.find(21031)
  end

end
