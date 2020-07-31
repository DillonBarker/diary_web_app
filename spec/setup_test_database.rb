require 'database_connection'

puts 'Initalizing...'
puts 'Database being reset....'
puts '# 20%'
sleep 0.20
puts '## 40%'
sleep 0.20
puts '### 60%'
sleep 0.20
puts '#### 80%'
sleep 0.20
puts '##### 100%'
puts 'Done'

conn = DatabaseConnection.setup('diary_test')
conn.query("DROP TABLE entries;")
conn.query("CREATE TABLE entries(id SERIAL PRIMARY KEY, entry VARCHAR(60));")
