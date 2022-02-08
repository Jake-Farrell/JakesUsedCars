class CarLocation < ApplicationRecord
  has_many :car_sales

  validates :state, :region, presence: true
end
