feature 'Hit points' do
    scenario 'display Player_2 hit points' do
      sign_in_and_play
      expect(page).to have_text 'Nata - 10000 HIT POINTS!'
    end
  end

  feature 'Reduce HP' do
    scenario 'reduce Player_2 hit points by 10' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_text 'Nata - 9990 HIT POINTS!'
    end
  end