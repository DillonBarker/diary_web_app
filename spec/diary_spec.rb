require 'diary'
require 'database_helpers'

describe Diary do
  describe '.all' do
    it 'returns a list of all diary entries' do
      entry = Diary.create_entry(entry: 'Hello I am Dillon')
      Diary.create_entry(entry: 'Test entry 2')
      diary = Diary.all

      expect(diary.length).to eq 2
      expect(diary.first).to be_a Diary
      expect(diary.first.id).to eq entry.id
      expect(diary.first.entry).to eq 'Hello I am Dillon'
    end
  end

  describe '.create_entry' do
    it 'creates and adds a new entry' do
      entry = Diary.create_entry(entry: 'Test diary entry')
      persisted_data = persisted_data(id: entry.id)

      expect(entry).to be_a Diary
      expect(entry.id).to eq persisted_data['id']
      expect(entry.entry).to eq 'Test diary entry'
    end
  end

  describe '.delete' do
    it 'it takes an id and deletes that entry' do
      entry = Diary.create_entry(entry: 'Test diary entry')
      Diary.delete(id: entry.id)
      expect(Diary.all.length).to eq 0
    end
  end
end
