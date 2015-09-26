class User < ActiveRecord::Base
  has_many :game_results
end
