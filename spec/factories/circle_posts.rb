FactoryBot.define do
  factory :circle_post do
    content { Faker::Lorem.paragraph }
    association :circle_account
  end
end
