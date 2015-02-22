class Order < ActiveRecord::Base
	belongs_to :product
	belongs_to :product_option
	belongs_to :user
end
