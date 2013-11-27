class ProvincesController < ApplicationController
  def create
    @province = User.new(user_params)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :pst, :gst, :hst)
  end
end
