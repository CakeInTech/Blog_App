class Post < ApplicationRecord
  has_many :likes, foreign_key: 'post_id'
  has_many :comments, foreign_key: 'post_id'
  belongs_to :author, class_name: 'User', dependent: :destroy, foreign_key: 'author_id'
  before_save :post_counter

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }
  
  def latest_comments
    comments.order(created_at: :desc).limit(5)
  end

  private

  def post_counter
    author.update(posts_counter: author.posts.all.length)
  end
end
