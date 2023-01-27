class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  before_save :comments_counter

  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }

  private

  def comments_counter
    post.update(comments_counter: post.comments.all.length)
  end
end
