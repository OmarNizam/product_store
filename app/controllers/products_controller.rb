class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @pictures = @product.all_pictures

  end

  def index
    @products=Product.all

  end

end
