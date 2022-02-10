feature 'attack' do
  scenario 'player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Ben attacked Chris')
  end

  scenario 'player 2s HP reduced by 10 when attacked' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Chris: 110 HP')
  end

  scenario 'player 2s HP reduced by 20 when attacked twice' do
    sign_in_and_play
    click_button('Attack')
    click_button('Attack')
    expect(page).to have_content('Chris: 100 HP')
  end
end