class Seller < ApplicationRecord
    has_many :products
  
    validates :name, presence: true
    validates :contact_information, presence: true
  end
  