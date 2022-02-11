feature 'enter name' do
  scenario 'players enter names which are then displayed' do
    sign_in_and_play
    expect(page).to have_content("Ben vs Chris")
  end
end