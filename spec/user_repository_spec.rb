require 'user_repository'

RSpec.describe "UserRepositry" do
    context "Testing Users methods" do
        it "Get all users" do
            repo = UserRepository.new
            users = repo.all

            expect(users.length).to eq 2

            expect(users[0].id).to eq '2'
            expect(users[0].username).to eq 'Randerson'
            expect(users[0].email_address).to eq 'ray@makers.com'

            expect(users[1].id ).to eq '1'
            expect(users[1].username).to eq 'Jthacker'
            expect(users[1].email_address).to eq 'jack@makers.com'
        end
    end
end