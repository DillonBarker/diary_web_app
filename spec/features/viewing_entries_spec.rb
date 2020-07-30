require 'pg'

feature 'viewing entries' do
  scenario 'user can see all diary entries' do
    conn = PG.connect(dbname: 'diary_test')
    conn.exec("INSERT INTO entries (entry) VALUES ('Hello I am Dillon');")
    conn.exec("INSERT INTO entries (entry) VALUES ('Test entry 2');")
    visit('/entries')
    expect(page).to have_content 'Hello I am Dillon'
    expect(page).to have_content 'Test entry 2'
  end
end
