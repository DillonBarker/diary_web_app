require 'pg'

def persisted_data(id:)
  conn = PG.connect(dbname: 'diary_test')
  result = conn.query("SELECT * FROM entries WHERE id = #{id};")
  result.first
end
