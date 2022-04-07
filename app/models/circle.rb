class Circle < ApplicationRecord
  has_one :circle_time, dependent: :destroy
  has_one :circle_image, dependent: :destroy
  has_one :image, through: :circle_image, class_name: 'Image', source: :image

  has_many :circle_days, dependent: :destroy

  def active_days
    circle_days.map { |circle_day| circle_day.active_day}
  end
end
