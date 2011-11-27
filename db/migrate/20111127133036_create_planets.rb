class CreatePlanets < ActiveRecord::Migration
  def self.up
    create_table :planets do |t|
      t.integer :player_id
      t.integer :locationX
      t.integer :locationY
      t.integer :manufacturing
      t.integer :growth
      t.integer :research
      t.integer :population
      t.integer :science
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :planets
  end
end
