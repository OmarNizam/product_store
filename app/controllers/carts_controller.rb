class CartsController < ApplicationController


  def index
    @carts = Cart.where(user_id:current_user)
  end

  def create
    set_user
    set_product
    @cart = Cart.create!(product_id:set_product,user_id:set_user)
    redirect_to root_path
  end

  def update
    @cart = Cart.(params.id)
  end




end


private
  def set_product
    params[:product_id]
  end

  def set_user
    @user = current_user.id
  end

  def cart_params
    params
      .require(:cart)
      .permit(
        :user_id, :product_id, :amount, :ckecked_out
      )
  end
