require 'pg'

puts 'Initalizing...'
puts 'Database being reset....'
puts '# 20%'
sleep 0.5
puts '## 40%'
sleep 0.5
puts '### 60%'
sleep 0.5
puts '#### 80%'
sleep 0.5
puts '##### 100%'
puts 'Done'

conn = PG.connect(dbname: 'diary_test')

conn.exec("TRUNCATE entries;")
