class Category < ApplicationRecord
  has_many :circle_categories, dependent: :destroy
  has_many :circles, through: :circle_categories
end
