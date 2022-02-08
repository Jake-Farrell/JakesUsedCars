class CarModel < ApplicationRecord
  has_many :car_sales

  validates :year, :model, :manufacturer, presence: true
  validates :model	, uniqueness: true
  validates :year, :cylinders, numericality: { olny_integer: true }
end
