class CircleImage < ApplicationRecord
  belongs_to :image, dependent: :destroy
  belongs_to :circle
end
