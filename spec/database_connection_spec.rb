require 'database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'Creates a connection to the database' do
      expect(PG). to receive(:connect).with(dbname: 'diary_test')
      DatabaseConnection.setup('diary_test')
    end

    it 'connection is continuous' do
      conn = DatabaseConnection.setup('diary_test')
      expect(DatabaseConnection.connection).to eq conn
    end
  end

  describe '.query' do
    it 'executes SQL commands on the database' do
      conn = DatabaseConnection.setup('diary_test')
      expect(conn).to receive(:exec).with('SELECT * FROM entries;')
      DatabaseConnection.query('SELECT * FROM entries;')

    end
  end
end
