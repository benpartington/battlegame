require_relative "../lib/game.rb"
require_relative '../lib/player.rb'

describe Game do 
    subject(:player1) { Player.new('Chris') }
    subject(:player2) { Player.new('Ben') }

    describe "#attack" do
        it 'attacks another player' do
            player1.attack(player2)
            expect(player2.points).to eq 110
        end
    end
end 