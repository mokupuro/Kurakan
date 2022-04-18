class CirclePost < ApplicationRecord
  belongs_to :circle_account
  validates :circle_account_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
