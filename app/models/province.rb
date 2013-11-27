class Province < ActiveRecord::Base
  has_many :customers
  attr_accessible :name, :pst, :gst, :hst
end
