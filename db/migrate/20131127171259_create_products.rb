class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock_quantity
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
