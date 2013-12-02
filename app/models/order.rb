class Order < ActiveRecord::Base
  has_many :line_items
  has_many :products, :through => :line_items
  belongs_to :customer
  
  validates :hst_rate, :pst_rate, :gst_rate, numericality:true
end
