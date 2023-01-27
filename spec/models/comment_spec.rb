require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Tests For #Comment Model' do
    before :each do
      @user = User.create(name: 'King Cake',
                          photo: 'https://media.istockphoto.com/id/650966412/photo/homemade-colorful-mardi-gras-king-cake.jpg?s=612x612&w=0&k=20&c=l2xfuI8SDGwDWOcbPvZz7wcCSMd0-IXOv03BJk-zSys=', bio: 'It is the ultimate the most deliciouse the jaguar King Cake.')

      @post = Post.create(author: @user, title: 'Hello', text: 'This is my first post')

      @comment = Comment.create(post: @post, author: @user, text: 'Hi Tom!')
    end

    it 'check if comment counter is incremented' do
      expect(@post.comments.count).to eq 0
    end
  end
end
