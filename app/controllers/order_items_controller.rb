class OrderItemsController < ApplicationController
  
  def create
    @order = current_order
    if OrderItem.find_by(order_id: @order, product_id: params[:order_item][:product_id]).present?
      flash[:error] = "It's alreay in cart."
    else
      @order_item = @order.order_items.new(order_item_params)
      @order.save
      session[:order_id] = @order.id
      flash[:success] = "Product is added successfully."
    end  
    redirect_to  products_homes_path
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end



