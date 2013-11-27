class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :cust_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :email
      t.integer :province_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
