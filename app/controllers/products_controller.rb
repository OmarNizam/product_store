class ProductsController < ApplicationController

  def show
  end

  def index
    @products=Product.all
    
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end


end
