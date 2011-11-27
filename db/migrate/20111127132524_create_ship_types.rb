class CreateShipTypes < ActiveRecord::Migration
  def self.up
    create_table :ship_types do |t|
      t.string :name
      t.integer :attack
      t.integer :defense
      t.integer :speed

      t.timestamps
    end
  end

  def self.down
    drop_table :ship_types
  end
end
