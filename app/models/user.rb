class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :game_results, dependent: :destroy


  def count_number_of_wins
    game_results.wins.count.to_f
  end

  def count_number_of_games
    game_results.count.to_f
  end

  def win_average
    #binding.pry
   (count_number_of_wins / count_number_of_games)*100

  end

end
