require './lib/game'
describe Game do
 let(:mit) {double :mit, :name => "Mit", :receive_damage => 50}
 let(:dave) {double :dave, :name => "Dave"}
subject(:game) {Game.new(mit, dave)}

  describe '#attack' do
    it 'damages the player' do
      expect(mit).to receive(:receive_damage)
      game.attack(mit)
    end
  end

  describe "player name" do
    it 'expects a player name' do
      expect(game.player_1_name).to eq mit.name
      expect(game.player_2_name).to eq dave.name
    end
  end
end
