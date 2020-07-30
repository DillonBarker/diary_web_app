require 'pg'

class Diary
  def self.all
    if ENV['ENV'] == 'test'
      conn = PG.connect(dbname: 'diary_test')
    else
      conn = PG.connect(dbname: 'diary')
    end
      result = conn.exec("SELECT * FROM entries")
      result.map { |bookmark| bookmark['entry']}
  end
end
