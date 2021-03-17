feature 'Turns' do
    scenario 'Player 1 attacks and then Player 2 attacks' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_text 'Nata was attacked by Jack'
      click_button('Attack')
      expect(page).to have_text 'Jack was attacked by Nata'
      expect(page).to have_text 'Nata - 9990 HIT POINTS!'
      expect(page).to have_text 'Jack - 9990 HIT POINTS!'
    end
  end
