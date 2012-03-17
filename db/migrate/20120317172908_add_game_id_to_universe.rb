class AddGameIdToUniverse < ActiveRecord::Migration
  def self.up
     add_column :universes, :game_id, :integer, :null => false
  end

  def self.down
     remove_column :universes, :game_id 
  end
end
