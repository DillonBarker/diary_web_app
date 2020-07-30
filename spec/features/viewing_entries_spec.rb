require 'pg'

feature 'viewing entries' do
  scenario 'user can see all diary entries' do
    Diary.create_entry(entry: 'Hello I am Dillon')
    Diary.create_entry(entry: 'Test entry 2')
    visit('/entries')
    expect(page).to have_content 'Hello I am Dillon'
    expect(page).to have_content 'Test entry 2'
  end
end
