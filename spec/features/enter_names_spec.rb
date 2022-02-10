feature 'enter name' do
  scenario 'players enter names which are then displays' do
    visit('/')
    fill_in('player1', with: 'Ben')
    fill_in('player2', with: 'Chris')
    click_button('Submit')
    expect(page).to have_content("Ben vs Chris")
  end
end