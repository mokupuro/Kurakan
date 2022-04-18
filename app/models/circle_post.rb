class CirclePost < ApplicationRecord
  belongs_to :circle_account
  has_one :circle_post_image, dependent: :destroy
  has_one :image, through: :circle_post_image, class_name: 'Image', source: :image

  validates :circle_account_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  def upload_image(image)
    build_circle_post_image.build_image.image.attach(image)
  end
end
