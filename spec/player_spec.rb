require './lib/player'
describe Player do
  subject(:dave) {Player.new('Dave')}
  subject(:mit) {Player.new('Mit')}

  context "Test for instance of the class" do
    it "Player Instance" do
      expect(Player.new('Dave')).to be_instance_of(Player)
    end
  end
  context "Check for return value" do
    it "Checking return from initialize" do
      expect(dave.name).to eq 'Dave'
    end
  end
  describe "#hit_points" do
    it 'returns the hits points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  # describe '#attack' do
  #   let(:game) {double :game, :attack => 50}
  #   it 'damages the player' do
  #     expect(mit).to receive(:receive_damage)
  #     dave.attack(mit)
  #   end
  # end
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect{mit.receive_damage}.to change {mit.hit_points}.by(-10)
    end
  end
end
