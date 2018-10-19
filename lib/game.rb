require './lib/player'
class Game

attr_reader  :loser, :players
  def initialize(player_1, player_2)
    @current_player,@opponent_player = player_1,player_2
    @players = [@current_player,@opponent_player]
  end

  def attack(player,r)
  #  p "#{player} #{r}"
   rand =  r.sample
   player.receive_damage if rand
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

 def self.create(player1,player2)
   @game = Game.new(player1,player2)
 end

 def self.instance
   @game
 end

end
