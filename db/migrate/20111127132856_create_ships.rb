class CreateShips < ActiveRecord::Migration
  def self.up
    create_table :ships do |t|
      t.integer :player_id
      t.integer :locationX
      t.integer :locationY
      t.integer :destination
      t.integer :hitpoints
      t.integer :shiptype_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ships
  end
end
