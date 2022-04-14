class Circle < ApplicationRecord
  has_one :circle_time, dependent: :destroy
  accepts_nested_attributes_for :circle_time
  has_one :circle_image, dependent: :destroy
  has_one :image, through: :circle_image, class_name: 'Image', source: :image

  has_many :circle_days, dependent: :destroy
  has_many :day_of_weeks, through: :circle_days
end
