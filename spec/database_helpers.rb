require 'database_connection'

def persisted_data(id:)
  result = DatabaseConnection.query("SELECT * FROM entries WHERE id = #{id};")
  result.first
end
