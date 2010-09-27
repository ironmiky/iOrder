class CreateTables < ActiveRecord::Migration
  def self.up
    create_table :tables do |t|
      t.integer :number
      t.string :name
      t.integer :people
      t.integer :free
      t.float :price
      t.references :pr
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :tables
  end
end
