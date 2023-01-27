require 'rails_helper'

RSpec.describe Like, type: :model do
  before :each do
    @user = User.create(name: 'Monkey D Luffy',
                        photo: 'https://i.pinimg.com/736x/50/08/ef/5008efb9df96969624d2674645027a3a.jpg', bio: 'I\'m gonna be the king of the Pirates')
    @post = Post.create(author: @user, title: 'Fist Mission as a pirate',
                        text: 'Let\'s go to Sky Island and explore everything the world has to offer')
    @like = Like.new(author: @user, post: @post)
  end

  it 'should have an author' do
    @like.author = nil
    expect(@like).to_not be_valid
  end
end
