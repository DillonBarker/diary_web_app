require_relative 'database_connection'

class Diary

  attr_reader :id, :entry

  def initialize(id:, entry:)
    @id = id
    @entry = entry
  end


  def self.all
      result = DatabaseConnection.query("SELECT * FROM entries;")
      result.map do |entry|
        Diary.new(id: entry['id'], entry: entry['entry'])
      end
  end

  def self.create_entry(entry:)
    result = DatabaseConnection.query("INSERT INTO entries (entry) VALUES('#{entry}') RETURNING id, entry;")
    Diary.new(id: result[0]['id'], entry: result[0]['entry'])
  end

  def self.delete(id:)
    result = DatabaseConnection.query("DELETE FROM entries WHERE id =#{id};")
  end
end
