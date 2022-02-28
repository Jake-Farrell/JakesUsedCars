class LoactionsController < ApplicationController

  # GET /loactions or /loactions.json
  def index

    #@loactions = CarLocation.includes(:car_sales).order("id DESC").limit(10)
    @loactions = Kaminari.paginate_array(CarLocation.first(300)).page(params[:page])
  end

  # GET /loactions/1 or /loactions/1.json
  def show
    @loaction = CarLocation.find(params[:id])
  end

end
