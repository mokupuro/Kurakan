FactoryBot.define do
  factory :user_info do
    name { Faker::Internet.username }
    twitter_id { Faker::Internet.slug }
    instagram_id { Faker::Internet.slug }
  end
end
