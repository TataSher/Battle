def sign_in_and_play
  visit('/')
  fill_in 'Player_1', with: 'Jack'
  fill_in 'Player_2', with: 'Nata'
  click_button('Submit')
end