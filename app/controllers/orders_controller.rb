class OrdersController < ApplicationController

	def create
		flash[:success] = 'Thank you for your purchase.'
		redirect_to '/'
		
		product = Product.find(params[:product_id])
		quantity = params[:quantity].to_i
		tax = product.price * quantity * 0.09
		subtotal = product.price * quantity
		total = subtotal + tax


		Order.create({:quantity => quantity, :user_id => current_user.id, :product_id => product.id, :subtotal => subtotal, :tax => tax, :total => total})

	end

end
