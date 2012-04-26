class RemoveTimeStampsFromGamesPlayersTable < ActiveRecord::Migration
  def change
    remove_column :games_players, :created_at
    remove_column :games_players, :updated_at
  end
end
