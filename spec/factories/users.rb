FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    after(:build) do |user|
      user.user_info || build(:user_info, user: user)
    end
  end
end
