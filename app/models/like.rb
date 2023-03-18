class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :update_like_count


  def update_like_count
    post.increment!(:likes_count)
  end
end
