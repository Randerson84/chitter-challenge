require_relative 'database_connection'
require_relative 'user'

class UserRepository
    def all 
        users = []
        # Executes the SQL query:
        sql = 'SELECT id, email, name, username, password FROM users;'
        result = DatabaseConnection.exec_params(sql, [])
        
        result.each do |record|
            user = User.new
            user.id = record['id']
            user.email = record['email']
            user.name = record['name']
            user.username = record['username']
            user.password = record['password']
            users << user
        end
        return users
        # Returns an array of Post objects.
    end
end