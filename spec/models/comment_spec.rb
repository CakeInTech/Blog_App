require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Tests For #Comment Model' do
    before :each do
      @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')

      @post = Post.create(author: @user, title: 'Hello', text: 'This is my first post')

      @comment = Comment.create(post: @post, author: @user, text: 'Hi Tom!')
    end

    it 'check if comment counter is incremented' do
      expect(@post.comments.count).to eq 0
    end
  end
end
