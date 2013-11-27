class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.string :status
      t.decimal :pst_rate
      t.decimal :gst_rate
      t.decimal :hst_rate
      t.string :customer_id
      t.string :integer
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
