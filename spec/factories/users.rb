FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    name { Faker::Internet.username }
    twitter_id { Faker::Lorem.characters(number: 10) }
    instagram_id { Faker::Lorem.characters(number: 10) }
  end
end
