class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :order_number
      t.references :table

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
