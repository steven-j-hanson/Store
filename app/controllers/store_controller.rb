class StoreController < ApplicationController
  
  def index
    @products = Product.order('product_id DESC')
  end

  def show
      @products = Product.all(:name)
  end
end
