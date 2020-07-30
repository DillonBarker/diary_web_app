require 'diary'

describe '.all' do
  it 'returns a list of all diary entries' do
    conn = PG.connect(dbname: 'diary_test')

    conn.exec("INSERT INTO entries (entry) VALUES ('Hello I am Dillon');")
    conn.exec("INSERT INTO entries (entry) VALUES ('Test entry 2');")

    diary = Diary.all

    expect(diary).to include 'Hello I am Dillon'
    expect(diary).to include 'Test entry 2'
  end
end
