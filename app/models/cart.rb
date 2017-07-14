class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def unchecked
    self.where(ckecked_out: false)
  end

end
