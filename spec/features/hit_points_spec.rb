feature 'Hit points' do
    scenario 'display Player_2 hit points' do
      sign_in_and_play
      expect(page).to have_text 'Nata - 10000 HIT POINTS!'
    end
  end