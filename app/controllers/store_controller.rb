class StoreController < ApplicationController
  
  def index
    @products = Product.order('product_id DESC')
  end

  def show
      @products = Product.all(:name)
  end
  
  def search
  end
  
  def search_results
    keywords = params[:keywords]
  
    @products = Product.where("name LIKE ?", "%#{keywords}%")
  end
end
