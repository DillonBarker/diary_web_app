feature 'Button on homepage' do
  scenario 'Clicks button, goes to diary' do
    visit('/')
    click_button 'To Diary'
    expect(page).to have_content 'My Diary'
  end
end
