class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  before_save :likes_counter

  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }

  private

  def likes_counter
    post.update(likes_counter: post.likes.all.length)
  end
end
