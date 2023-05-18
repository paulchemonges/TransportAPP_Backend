# app/models/product.rb
class Product < ApplicationRecord
  belongs_to :seller

  attribute :name, :string
  attribute :description, :text
  attribute :price, :decimal, precision: 8, scale: 2
  attribute :quantity, :integer

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
