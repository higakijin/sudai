class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  attachment :prob_image, content_type: ["image/jpeg", "image/png"]
  attachment :ans_image, content_type: ["image/jpeg", "image/png"]

  validates :level, presence: true
  validates :category, presence: true
  validates :prob_image, presence: true
  validates :ans_image, presence: true

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
