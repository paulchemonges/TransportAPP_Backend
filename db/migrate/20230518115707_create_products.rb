class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
