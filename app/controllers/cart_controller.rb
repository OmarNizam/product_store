class CartController < ApplicationController


  def index
    @carts = Cart.where(user_id:current_user).unchecked_items
    
  end


end
