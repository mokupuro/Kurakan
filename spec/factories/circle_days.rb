FactoryBot.define do
  factory :circle_day do
    association :circle
    association :day_of_week
  end
end
