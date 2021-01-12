require 'rails_helper'

RSpec.describe User, type: :model do
    context 'when creating user' do
        it "is valid" do
            user = User.new first_name: 'Hercules', last_name: 'Surname', username: 'DemiGodHerc', password: 'pw'
            expect(user).to be_valid, "Expect user to be valid, got #{user.inspect}"
        end

        it "is has valid name" do
            user = User.new(first_name: 'Hercules', last_name: 'Surname', username: 'DemiGodHerc')
            expect(user.first_name).to eq('Hercules'), "Expect user to be valid, got #{user.first_name}"
        end
    end
end
