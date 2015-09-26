class AddForiegnKeyGameResultsUsers < ActiveRecord::Migration
  def change
    add_foreign_key :game_results, :users
  end
end
