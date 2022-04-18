class Circle < ApplicationRecord
  has_one :circle_time, dependent: :destroy
  accepts_nested_attributes_for :circle_time
  has_one :circle_image, dependent: :destroy
  has_one :image, through: :circle_image, class_name: 'Image', source: :image
  has_one :circle_account, dependent: :destroy

  has_many :circle_days, dependent: :destroy
  has_many :day_of_weeks, through: :circle_days
  has_many :favorites, dependent: :destroy

  def favorited?(user)
    favorites.where(user: user).exists?
  end

  def upload_image(image)
    build_circle_image.build_image.image.attach(image)
  end

  def circle_account?(user)
    user && user.circle_account  = circle_account
  end
end
