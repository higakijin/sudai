class Post < ApplicationRecord
  belongs_to :user
  attachment :prob_image
  attachment :ans_image

  validates :level, presence: true
  validates :category, presence: true
  validates :prob_image, presence: true
  validates :ans_image, presence: true

end
