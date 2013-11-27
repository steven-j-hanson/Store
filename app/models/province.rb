class Province < ActiveRecord::Base
  attr_accessible :name, :pst, :gst, :hst
end
