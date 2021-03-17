feature 'Enter names' do
  scenario 'User opens a page' do
    visit('/')
    fill_in 'Player 1', with: 'Bill'
    expect(page).to have_text 'Bill'
  end
end