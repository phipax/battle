class Player
  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 60
  def initialize (name = "none")
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def receive_damage
    @hit_points -= 10
  end

  # def attack(name)
  #   name.receive_damage
  # end
end