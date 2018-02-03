class CheckoutsController < ApplicationController
  def shipping
  	@address = Address.new
  end

  def billing
  end
end
