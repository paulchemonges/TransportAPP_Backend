# app/models/transporter.rb
class Transporter < ApplicationRecord
    # Associations
    has_many :orders
  
    # Validations
    validates :name, presence: true
    validates :contact_information, presence: true
    validates :vehicle_details, presence: true
  end
  