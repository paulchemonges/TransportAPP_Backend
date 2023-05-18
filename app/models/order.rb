# app/models/order.rb
class Order < ApplicationRecord
  belongs_to :buyer
  belongs_to :product

  # Define the attributes and validations
  attribute :quantity, :integer
  attribute :total_price, :decimal, precision: 8, scale: 2

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # Define the order status enum
  enum order_status: { pending: 'Pending', completed: 'Completed', cancelled: 'Cancelled' }
end
