class CreateTransporters < ActiveRecord::Migration[7.0]
  def change
    create_table :transporters do |t|
      t.string :name
      t.string :contact_information
      t.string :vehicle_details

      t.timestamps
    end
  end
end
