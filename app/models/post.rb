class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_one_attached :image

after_save :update_post_count


  def update_post_count
     post.increment!(:posts_count)
  end

end
