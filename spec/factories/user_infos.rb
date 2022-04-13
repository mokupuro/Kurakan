FactoryBot.define do
  factory :user_info do
    name { Faker::Internet.username }
    twitter_id { Faker::Lorem.characters(number: 10) }
    instagram_id { Faker::Lorem.characters(number: 10) }
    association :user, factory: :user, strategy: :build
    after(:build) do |user_info|
      user_info.user&.user_info = user_info
    end
  end
end
