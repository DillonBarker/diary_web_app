require './lib/database_connection.rb'

if ENV['ENV'] == 'test'
  DatabaseConnection.setup('diary_test')
else
  DatabaseConnection.setup('diary')
end
