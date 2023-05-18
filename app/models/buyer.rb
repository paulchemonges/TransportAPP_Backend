class Buyer < ApplicationRecord
    has_many :orders
  
    validates :name, presence: true
    validates :contact_information, presence: true
    validates :shipping_address, presence: true
  end
  