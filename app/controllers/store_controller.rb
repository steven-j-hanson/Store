class StoreController < ApplicationController
  
  def index
    @products = Product.order('product_id DESC')
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:product_id])
  end
  
  def category_search
    @products = Product.where("Category_id = " + params[:id])
  end
  
  def search
  end
  
  def search_results
    keywords = params[:keywords]
  
    @products = Product.where("name LIKE ?", "%#{keywords}%")
  end
end
