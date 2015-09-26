class AddForiegnKeyUsersGameresult < ActiveRecord::Migration
  def change
    remove_index :game_results, :user_id
    add_foreign_key :game_results, :users
  end
end
