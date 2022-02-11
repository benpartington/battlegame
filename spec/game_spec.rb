require_relative "../lib/game.rb"
require_relative '../lib/player.rb'

describe Game do 
    describe "#attack" do
        it 'attacks another player' do
            game = Game.new
            game.add_players
            player1.attack(player2)
            expect(player2.points).to eq 110
        end
    end
end 