class CreateBuyers < ActiveRecord::Migration[7.0]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :contact_information
      t.string :shipping_address

      t.timestamps
    end
  end
end
