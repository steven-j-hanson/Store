class StoreController < ApplicationController
  before_filter :initialize_sale  

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
    
    @category = Category.where("name LIKE ?", "%#{keywords}%").first
    @products = Product.where("name LIKE ?", "%#{keywords}%")
    if @products.empty?
      @products = Product.where("category_id LIKE ?" , @category.id)
    end
  end
  
  def add_sale
    product = Product.find(params[:id])
    if session[:buy] = nil
      session[:buy] = []
    end
    session[:buy] ||=[]
    session[:buy] << product
    redirect_to :action => :index
  end
  
  def remove_sale
    product = Product.find(params[:id])
    session[:buy].delete(product)
    redirect_to :action => :index
  end
  
  protected
  def initialize_sale
    session[:buy] ||=[]
  end
end
