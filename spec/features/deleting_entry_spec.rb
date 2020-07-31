feature 'Deleting entry' do
  scenario 'User clicks delete button' do
    visit('/entries/new')
    fill_in 'entry', with: 'Test diary entry'
    click_button 'Submit'
    expect(page).to have_button 'Delete'
    first('.entry').click_button 'Delete'
    # expect(current_path).to eq '/entries'
    expect(page).not_to have_content('Test diary entry')
  end
end
