FactoryBot.define do
  factory :circle_time do
    active_start_time { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    active_end_time { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    association :circle, factory: :circle, strategy: :build
    after(:build) do |circle_time|
      circle_time.circle&.circle_time = circle_time
    end
  end
end
