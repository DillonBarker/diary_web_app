feature 'adding a new entry' do
  scenario 'a user can add a new diary entry' do
    visit('/entries/new')
    fill_in 'entry', with: 'Test diary entry'
    click_button 'Submit'
    expect(page).to have_content 'Test diary entry'
  end
end
