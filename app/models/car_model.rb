class CarModel < ApplicationRecord
  has_many :car_sales

  validates :year, :manufacturer, :modelnumber, presence: true
  #validates :modelnumber, uniqueness: true
  validates :year, numericality: true
end
