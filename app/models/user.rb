class User < ActiveRecord::Base
  has_many :game_results, dependent: :destroy
end
