FactoryBot.define do
  factory :circle_account do
    association :user
    association :circle
  end
end
