class AddUniverseIdToPlanets < ActiveRecord::Migration
  def self.up
    add_column :planets, :universe_id, :integer

  end

  def self.down
    remove_column :planets, :universe_id
  end
end
