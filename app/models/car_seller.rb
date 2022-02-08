class CarSeller < ApplicationRecord
  has_many :car_sales

  validates :name, :phoneNumber, :email, presence: true
  validates :email, uniqueness: true

end
