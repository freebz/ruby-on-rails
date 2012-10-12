class LineItem < ActiveRecord::Base
  belongs_to :product
	belongs_to :cart
	
	attr_accessible :cart_id, :product_id, :cart, :product
	#attr_accessible :cart, :product
	
	def total_price
		product.price * quantity
	end
	
end
