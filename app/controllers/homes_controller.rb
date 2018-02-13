class HomesController < ApplicationController

	def restro
		@products = Product.all
	end

	def product_popup
		@product = Product.find(params[:product_id])
	end

	def create_testimonial
		@testimonial = Testimonial.new(tesimonial_parms)
		@testimonial.save
	end

	def testimonial
		@testimonials = Testimonial.all
	end


	private
	  def tesimonial_parms
	  	params.require(:testimonial).permit(:name, :email, :message)
	  end
  
end
