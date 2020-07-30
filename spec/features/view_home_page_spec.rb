feature 'has home page' do
  scenario 'user views homepage' do
    visit '/'
    expect(page).to have_content "Dill's Diary"
  end
end
