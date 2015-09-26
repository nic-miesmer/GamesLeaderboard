class AddUserRefToGameResult < ActiveRecord::Migration
  def change
    add_reference :game_results, :user, index: true, foreign_key: true
  end
end
