class CartsController < ApplicationController


  def index
    @carts = Cart.where(user_id:current_user)
  end

  def new
    @cart = Cart.new
    set_product
    set_user
  end

  def update
    @cart = Cart.(params.id)
  end



end


private
  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_user
    @user = current_user
  end

  def cart_params
    params
      .require(:cart)
      .permit(
        :user_id, :product_id, :amount, :ckecked_out
      )
  end
