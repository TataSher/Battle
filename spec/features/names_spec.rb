feature 'Enter names' do
  scenario 'User opens a page' do
    sign_in_and_play
    expect(page).to have_text 'Jack'
    expect(page).to have_text 'Nata'
  end
end
