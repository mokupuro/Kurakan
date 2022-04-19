FactoryBot.define do
  factory :circle_category do
    association :circle
    association :category
  end
end
