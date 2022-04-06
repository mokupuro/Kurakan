FactoryBot.define do
  factory :circle_day do
    active_day { Faker::Number.within(range: 0..6) }
  end
end
