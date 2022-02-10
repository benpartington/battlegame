feature 'dispaly HP' do
    scenario 'displays player 2s hp' do
        visit('/')
        fill_in('player1', with: 'Ben')
        fill_in('player2', with: 'Chris')
        click_button('Submit')
        expect(page).to have_content('Chris: 120 HP')
    end
end