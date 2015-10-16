class GameResult < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  scope :wins, -> {where(win: true) }

  def global_rank


  end

  def games_won(user)
    

  end

end

