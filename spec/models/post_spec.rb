require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Tests for #Post model' do
    before :each do
      @user = User.create(name: 'Cake')
      @post = @user.posts.create(title: 'My first post')
    end

    describe 'Unit test for @post object' do
      it 'checks that the @post object is valid' do
        expect(@post).to be_valid
      end

      it 'checks that the title of the post is "My first post"' do
        expect(@post.title).to eql 'My first post'
      end
    end

    describe 'Unit test for @post object methods' do
      it 'is not valid without a title' do
        @post.title = nil
        expect(@post).to_not be_valid
      end

      it 'has a title that is not more than 250 characters' do
        @post.title = 'a' * 251
        expect(@post).to_not be_valid
      end

      it 'has a comments_counter greater than or equal to 0' do
        @post.comments_counter = -5
        expect(@post).to_not be_valid
      end

      it 'has a likes_counter greater than or equal to 0' do
        @post.likes_counter = -3
        expect(@post).to_not be_valid
      end
    end
  end
end
