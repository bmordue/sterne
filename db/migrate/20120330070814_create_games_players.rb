class CreateGamesPlayers < ActiveRecord::Migration
  def self.up
    create_table :games_players, :id => false do |t|
      t.integer :game_id, :null => false
      t.integer :player_id, :null => false
      t.timestamps
    end

    add_index :games_players, [:game_id, :player_id], :unique => true

  end

  def self.down
    remove_index :games_players, :column => [:game_id, :player_id]
    drop_table :games_players
  end
end
