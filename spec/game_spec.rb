require_relative "../lib/game.rb"
require_relative '../lib/player.rb'

describe Game do 
    subject(:game) {described_class.new("Ben", "Francesco") }

    describe "#player_1" do
      it 'retrieves first player' do
        expect(game.player1).to eq "Ben"
      end
    end

    describe "#player_2" do
      it 'retrieves second player' do
        expect(game.player2).to eq "Francesco"
      end
    end
    

    describe "#attack" do
        it 'attacks another player' do
            player2 = Player.new("Ben")
            game.attack(player2)
            expect(player2.points).to eq 110
        end
    end
end 