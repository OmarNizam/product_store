class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @pictures = @product.all_photos
    @customer = User.new
  end

  def index
    @products=Product.all
    @customer = User.new
  end

end
