class CarsController < ApplicationController
  def index
    #@cars = CarSale.includes(:car_location).order("price DESC").limit(20)
    @cars = Kaminari.paginate_array(CarSale.first(300)).page(params[:page])

  end

  def show
  @car = CarSale.find(params[:id])
  #@car = CarSale.find(21031)
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @CarSaleFinds = CarSale.where("description LIKE ? ",wildcard_search)
  end

end
