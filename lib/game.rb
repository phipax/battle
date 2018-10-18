class Game

attr_reader  :loser, :players
  def initialize(player_1, player_2)
    @current_player = player_1
    @opponent_player = player_2
    @players = [@current_player,@opponent_player]
  end

  def attack(player1)
    player1.receive_damage
  end

  def swap
    @players.reverse!
  end

 def winner?
   if @players.first.hit_points == 0
     @loser = @players.first.name
     @players.last
   elsif @players.last.hit_points == 0
     @loser = @players.last.name
     @players.first
   end
 end
end
