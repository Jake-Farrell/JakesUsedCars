class CarSale < ApplicationRecord
  belongs_to :car_seller
  belongs_to :car_model
  belongs_to :car_location
end
