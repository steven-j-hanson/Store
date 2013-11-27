class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :stock_quantity, :image_filename
  has_many :line_items
  has_many :orders, :through => :line_items
end
