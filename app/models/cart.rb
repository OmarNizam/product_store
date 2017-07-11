class Cart < ApplicationRecord
  belongs_to :user
  has_many :products


  validates :user, presence: true
  validates :products, presence: true
  validates :quantity, presence:true
end
