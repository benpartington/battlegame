require_relative '../lib/player.rb'

describe Player do
    subject(:player1) { described_class.new('Chris') }
    subject(:player2) { described_class.new('Ben') }


    it 'return its name' do
      expect(player1.name).to eq 'Chris'
    end

    it 'has an initial number of HP' do
      expect(player1.points).to eq 120
    end

    it 'attacks another player' do
      player1.attack(player2)
      expect(player2.points).to eq 110
    end
end