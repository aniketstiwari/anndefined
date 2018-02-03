class HomesController < ApplicationController

	def restro
		@products = Product.all
	end

	def product_popup
		@product = Product.find(params[:product_id])
	end
  
end
