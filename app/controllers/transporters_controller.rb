class TransportersController < ApplicationController
    # List all transporters
    def index
      @transporters = Transporter.all
      render json: @transporters
    end
  
    # Create a new transporter
    def create
      @transporter = Transporter.new(transporter_params)
      if @transporter.save
        render json: @transporter, status: :created
      else
        render json: @transporter.errors, status: :unprocessable_entity
      end
    end
  
    # Update transporter details
    def update
      @transporter = Transporter.find(params[:id])
      if @transporter.update(transporter_params)
        render json: @transporter
      else
        render json: @transporter.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a transporter
    def destroy
      @transporter = Transporter.find(params[:id])
      @transporter.destroy
      head :no_content
    end
  
    private
  
    # Permit transporter parameters
    def transporter_params
      params.require(:transporter).permit(:name, :contact_information, :vehicle_details)
    end
  end
  