class SellersController < ApplicationController
    # List all sellers
    def index
      @sellers = Seller.all
      render json: @sellers
    end
  
    # Create a new seller
    def create
      @seller = Seller.new(seller_params)
      if @seller.save
        render json: @seller, status: :created
      else
        render json: @seller.errors, status: :unprocessable_entity
      end
    end
  
    # Update seller details
    def update
      @seller = Seller.find(params[:id])
      if @seller.update(seller_params)
        render json: @seller
      else
        render json: @seller.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a seller
    def destroy
      @seller = Seller.find(params[:id])
      @seller.destroy
      head :no_content
    end
  
    private
  
    # Permit seller parameters
    def seller_params
      params.require(:seller).permit(:name, :contact_information)
    end
  end
  