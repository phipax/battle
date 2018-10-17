class Game

attr_reader :player_1, :player_2, :player_1_name, :player_2_name, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_name = @player_1.name
    @player_2_name = @player_2.name
    @current_player = @player_1_name
  end

  def attack(player1)
    player1.receive_damage
  end

  def swap
    @current_player == @player_1_name ? @current_player = @player_2_name : @current_player = @player_1_name
  end

end
