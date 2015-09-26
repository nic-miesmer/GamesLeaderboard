class CreateGameResults < ActiveRecord::Migration
  def change
    create_table :game_results do |t|
      t.integer :player_id
      t.integer :game_id
      t.date :date
      t.boolean :win

      t.timestamps null: false
    end
  end
end
