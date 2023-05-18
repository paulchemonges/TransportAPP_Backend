class BuyersController < ApplicationController
    # List all buyers
    def index
      @buyers = Buyer.all
      render json: @buyers
    end
  
    # Create a new buyer
    def create
      @buyer = Buyer.new(buyer_params)
      if @buyer.save
        render json: @buyer, status: :created
      else
        render json: @buyer.errors, status: :unprocessable_entity
      end
    end
  
    # Update buyer details
    def update
      @buyer = Buyer.find(params[:id])
      if @buyer.update(buyer_params)
        render json: @buyer
      else
        render json: @buyer.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a buyer
    def destroy
      @buyer = Buyer.find(params[:id])
      @buyer.destroy
      head :no_content
    end
  
    private
  
    # Permit buyer parameters
    def buyer_params
      params.require(:buyer).permit(:name, :contact_information, :shipping_address)
    end
  end
  