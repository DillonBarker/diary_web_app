require 'pg'

class Diary

  attr_reader :id, :entry

  def initialize(id:, entry:)
    @id = id
    @entry = entry
  end


  def self.all
    if ENV['ENV'] == 'test'
      conn = PG.connect(dbname: 'diary_test')
    else
      conn = PG.connect(dbname: 'diary')
    end
      result = conn.exec("SELECT * FROM entries")
      result.map do |entry|
        Diary.new(id: entry['id'], entry: entry['entry'])
      end
  end

  def self.create_entry(entry:)
    if ENV['ENV'] == 'test'
      conn = PG.connect(dbname: 'diary_test')
    else
      conn = PG.connect(dbname: 'diary')
    end
    result = conn.exec("INSERT INTO entries (entry) VALUES('#{entry}') RETURNING id, entry")
    Diary.new(id: result[0]['id'], entry: result[0]['entry'])
  end

end
