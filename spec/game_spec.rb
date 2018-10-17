require './lib/game'
describe Game do
 let(:mit) {double :mit, :receive_damage => 50}
 let(:dave) {double :dave}
subject(:game) {Game.new}

  describe '#attack' do
    it 'damages the player' do
      expect(mit).to receive(:receive_damage)
      game.attack(mit)
    end
  end
end
