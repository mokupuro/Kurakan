class Circle < ApplicationRecord
  has_one :circle_time, dependent: :destroy
  has_many :circle_days, dependent: :destroy
end
