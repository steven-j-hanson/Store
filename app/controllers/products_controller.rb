class ProductsController < ApplicationController
  def create
    @product = Product.new(user_params)
  end
  
  private
  
  def user_params
    params.require(:product_id).permit(:name, :description, :price, :stock_quantity)
  end
end
