class Product < ActiveRecord::Base

	def discounted_message
		if price < 60 
			return "Discounted Item"
		else 
			return "On Sale"
		end
	end

	def tax
		return price * 0.09
	end

	def total
		return price + tax
	end
end
