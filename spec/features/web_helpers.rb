def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Ben')
  fill_in('player2', with: 'Chris')
  click_button('Submit')
end