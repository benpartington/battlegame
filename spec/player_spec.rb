require_relative '../lib/player.rb'

describe Player do
    subject(:player1) { described_class.new('Chris') }
    subject(:player2) { described_class.new('Ben') }

  describe '#name' do
    it 'returns player name' do
      expect(player1.name).to eq 'Chris'
    end
  end

  describe '#points' do  
    it 'has an initial number of HP' do
      expect(player1.points).to eq 120
    end
  end
  
    it 'attacks another player' do
      player1.attack(player2)
      expect(player2.points).to eq 110
    end
end