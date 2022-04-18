FactoryBot.define do
  factory :circle_post_image do
    association :image
    association :circle_post
  end
end
