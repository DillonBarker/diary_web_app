require 'pg'

p 'Initalizing...'
p 'Database being reset....'
p '#######################'
p 'Done'

conn = PG.connect(dbname: 'diary_test')

conn.exec("TRUNCATE entries;")
