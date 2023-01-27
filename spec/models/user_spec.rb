require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'King Cake', posts_counter: 5) }

  it 'is valid with a name and posts_counter' do
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'has a posts_counter greater than or equal to 0' do
    user.posts_counter = -1
    expect(user).to_not be_valid
  end

  it 'has a posts_counter set to 0 by default' do
    user = User.create(name: 'King Cake')
    expect(user.posts_counter).to eq 0
  end
end
