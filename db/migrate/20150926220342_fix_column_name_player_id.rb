class FixColumnNamePlayerId < ActiveRecord::Migration
  def change
    rename_column :game_results, :player_id, :user_id
  end
end
