class ProductsController < ApplicationController
  def create
    @product = User.new(user_params)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :description, :price, :stock_quantity)
  end
end
