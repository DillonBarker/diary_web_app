require 'database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'Creates a connection to the database' do
      expect(PG). to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
    it 'connection is continuous' do
      conn = DatabaseConnection.setup('bookmark_manager_test')
      expect(DatabaseConnection.connection).to eq conn
    end
  end

  describe '.query' do
    it 'executes SQL commands on the database' do


    end
  end
end
