feature 'dispaly HP' do
    scenario 'displays player 2s hp' do
        sign_in_and_play
        expect(page).to have_content('Chris: 120 HP')
    end
end