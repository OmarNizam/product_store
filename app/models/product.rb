class Product < ApplicationRecord


  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true
end
