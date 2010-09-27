class CreateOrderedProducts < ActiveRecord::Migration
  def self.up
    create_table :ordered_products do |t|
      t.references :product
      t.integer :quantity
      t.references :order

      t.timestamps
    end
  end

  def self.down
    drop_table :ordered_products
  end
end
