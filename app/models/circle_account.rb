class CircleAccount < ApplicationRecord
  belongs_to :user
  belongs_to :circle
  has_many :circle_posts, dependent: :destroy
end
