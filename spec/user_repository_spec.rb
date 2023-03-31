require 'user_repository'

    def reset_users_table
        seed_sql = File.read('spec/seeds.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'chitter_challenge_test' })
        connection.exec(seed_sql)
    end

    RSpec.describe UserRepository do
        before(:each) do 
            reset_users_table
        end

    context "Testing Users methods" do
        it "Get all users" do
            repo = UserRepository.new
            users = repo.all

            expect(users.length).to eq 2

            expect(users[0].id).to eq '1'
            expect(users[0].username).to eq 'Randerson'
            expect(users[0].email).to eq 'ray@makers.com'

            expect(users[1].id ).to eq '2'
            expect(users[1].username).to eq 'Jthacker'
            expect(users[1].email).to eq 'jack@makers.com'
        end
    end
end