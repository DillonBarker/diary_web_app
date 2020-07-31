feature 'Deleting entry' do
  scenario 'User clicks delete button' do
    visit('/entries')
    fill_in 'entry', with: 'Test diary entry'
    expect(page).to have_button 'Delete'
    first('.entry').click_button 'Delete'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_content('Test diary entry')
  end
end
