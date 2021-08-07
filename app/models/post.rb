class Post < ApplicationRecord
  belongs_to :user
  attachment :prob_image, content_type: ["image/jpeg", "image/png"]
  attachment :ans_image, content_type: ["image/jpeg", "image/png"]

  validates :level, presence: true
  validates :category, presence: true
  validates :prob_image, presence: true
  validates :ans_image, presence: true

end
