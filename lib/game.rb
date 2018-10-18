class Game

attr_reader :current_player, :opponent_player, :loser

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

 def winner?
  # p "Current:: #{@current_player.name} #{@current_player.hit_points}"
  # p "Opponent:: #{@opponent_player.name} #{@opponent_player.hit_points}"

   if @current_player.hit_points == 0
     @loser = @current_player.name
     @opponent_player
   elsif @opponent_player.hit_points == 0
     @loser = @opponent_player.name
     @current_player
   end
 end
  # private
  #
  # def opponent
  #   curr = @current_player
  #   opp = @opponent_player
  # end
end
