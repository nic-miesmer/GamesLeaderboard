json.array!(@game_results) do |game_result|
  json.extract! game_result, :id, :player_id, :game_id, :date, :win
  json.url game_result_url(game_result, format: :json)
end
