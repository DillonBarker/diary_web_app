require 'database_connection'

def setup_test_database
  puts 'Initalizing...'
  puts 'Database being reset....'
  puts '# 20%'
  sleep 0.01
  puts '## 40%'
  sleep 0.01
  puts '### 60%'
  sleep 0.01
  puts '#### 80%'
  sleep 0.01
  puts '##### 100%'
  puts 'Done'

  conn = DatabaseConnection.setup('diary_test')
  conn.query("TRUNCATE entries RESTART IDENTITY;")
end
