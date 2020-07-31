require './lib/database_connection'

if ENV['ENV'] == 'test'
  DatabaseConnection.setup('diary_test')
else
  DatabaseConnection.setup('diary')
end
