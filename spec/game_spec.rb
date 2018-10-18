require './lib/game'
describe Game do
 let(:mit) {double :mit, :name => "Mit", :receive_damage => 50, :hit_points => 50}
 let(:dave) {double :dave, :name => "Dave", :receive_damage => 0, :hit_points => 0}
subject(:game) {Game.new(mit, dave)}

  describe '#attack' do
    it 'damages the player' do
      expect(mit).to receive(:receive_damage)
      game.attack(mit)
    end
  end

  describe "player name" do
    it 'expects a player name' do
      expect(game.players.first.name).to eq mit.name
      expect(game.players.last.name).to eq dave.name
    end
  end

  describe "swaps players" do
    it 'expects to swap the player names' do
      game.swap
      expect(game.players.first.name).to eq "Dave"
    end
    it 'Returns the opponent' do
      game.swap
      expect(game.players.last.name).to eq "Mit"
    end
  end

  describe 'check for winner' do
    it 'check to see if we already have a winner' do
      game.attack(dave)
      expect(game.winner?).not_to eq nil
    end
  end

end
