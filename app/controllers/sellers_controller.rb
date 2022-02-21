class SellersController < ApplicationController
  def index
    @sellers = CarSeller.includes(:car_sales).order("name DESC").limit(20)
  end

  def show
  @seller = CarSeller.find(params[:id])
  @carlistings = CarSale.where("car_seller_id = ? ",params[:id])
  end

end
