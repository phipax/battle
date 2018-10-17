class Game

attr_reader :player_1, :player_2, :current_player, :opponent_player

  def initialize(player_1, player_2)
    # @player_1 = player_1
    # @player_2 = player_2
    @current_player = player_1
    @opponent_player = player_2
  end

  def attack(player1)
    player1.receive_damage
  end

  def swap
    opp = @opponent_player
    @opponent_player = @current_player
    @current_player = opp
  end

  # private
  #
  # def opponent
  #   curr = @current_player
  #   opp = @opponent_player
  # end
end
