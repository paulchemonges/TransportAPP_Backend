class OrdersController < ApplicationController
    # List all orders
    def index
      @orders = Order.all
      render json: @orders
    end
  
    # Create a new order
    def create
      @order = Order.new(order_params)
      if @order.save
        render json: @order, status: :created
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end
  
    # Update order details
    def update
      @order = Order.find(params[:id])
      if @order.update(order_params)
        render json: @order
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end
  
    # Assign a transporter to an order
    def assign_transporter
      @order = Order.find(params[:id])
      @transporter = Transporter.find(params[:transporter_id])
      @order.transporter = @transporter
  
      if @order.save
        render json: @order
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    # Permit order parameters
    def order_params
      params.require(:order).permit(:product_id, :seller_id, :buyer_id, :quantity, :total_price, :order_status)
    end
  end
  