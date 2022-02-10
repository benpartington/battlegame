require_relative '../lib/player.rb'

describe Player do
    it 'return its name' do
        subject = Player.new('Chris')
        expect(subject.name).to eq 'Chris'
    end
end