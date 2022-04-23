class CirclePostImage < ApplicationRecord
  belongs_to :image, dependent: :destroy
  belongs_to :circle_post
end
