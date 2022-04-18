class Image < ApplicationRecord
  has_one_attached :image
  has_one :circle_image, dependent: :destroy
  has_one :circle_post_image, dependent: :destroy

  validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: "must be a valid image format" },
                    size: { less_than: 5.megabytes,
                            message: "should be less than 5MB" }

  def display_image
    image.variant(resize_to_limit: [500, 500])
  end
end
