require_relative "../lib/game.rb"
require_relative '../lib/player.rb'

describe Game do 
    subject(:game) {described_class.new("Ben", "Francesco") }
    player = Player.new("Ben")
    it { is_expected.to respond_to(:player).with(2).arguments }

    describe "#attack" do
        it 'attacks another player' do
            player2 = Player.new("Ben")
            game.attack(player2)
            expect(player2.points).to eq 110
        end
    end
end 