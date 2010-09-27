class CreatePrs < ActiveRecord::Migration
  def self.up
    create_table :prs do |t|
      t.string :name
      t.string :cellphone
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :prs
  end
end
