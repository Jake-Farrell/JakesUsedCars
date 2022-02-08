class CarSale < ApplicationRecord
  belongs_to :car_seller
  belongs_to :car_model
  belongs_to :car_location

  validates :price, :VIN, :odometer, presence: true
  validates :VIN, uniqueness: true


end
