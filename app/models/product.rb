class Product < ApplicationRecord
has_many :photos

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true
end
