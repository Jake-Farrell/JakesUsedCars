class CarLocation < ApplicationRecord
  has_many :car_sales

  validates :state, :region, presence: true
  validates :region, uniqueness: true
  #validates :lat,:long, numericality: true
end
