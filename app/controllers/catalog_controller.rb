class CatalogController < ApplicationController

  def index
    @products = products.all
  end

end
