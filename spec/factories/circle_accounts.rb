FactoryBot.define do
  factory :circle_account do
    association :user
    association :circle
    after(:create) do |circle_account|
      circle_account.circle_posts << build(:circle_post, circle_account: circle_account)
    end
  end
end
