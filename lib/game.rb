class Game

attr_reader :player_1, :player_2, :player_1_name, :player_2_name

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_name = @player_1.name
    @player_2_name = @player_2.name
  end

  def attack(player1)
    player1.receive_damage
  end

end
