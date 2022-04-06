class Image < ApplicationRecord
  has_one_attached :image

  has_one :circle_image
end
