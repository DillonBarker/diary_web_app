feature 'Deleting entry' do
  scenario 'User clicks delete button' do
    Diary.create_entry(entry: 'Test diary entry')
    visit('/entries')
    expect(page).to have_content('Test diary entry')
    first('.entry').click_button 'Delete'
    expect(current_path).to eq '/entries'
    expect(page).not_to have_content('Test diary entry')
  end
end
