feature 'Enter names' do
  scenario 'User opens a page' do
    visit('/')
    fill_in 'Player_1', with: 'Jack'
    fill_in 'Player_2', with: 'Nata'
    click_button('Submit')
    expect(page).to have_text 'Jack'
    expect(page).to have_text 'Nata'
  end
end
