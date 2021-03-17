feature 'Attack' do
    scenario 'Player 1 attacks Player 2 and a confirmation is displayed' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_text 'Nata was attacked by Jack'
    end
  end
