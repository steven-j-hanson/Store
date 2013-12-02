class Province < ActiveRecord::Base
  has_many :customers
  attr_accessible :name, :pst, :gst, :hst
  
  validates :name, presence:true
end
