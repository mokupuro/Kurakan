FactoryBot.define do
  factory :circle_post do
    content { Faker::Lorem.paragraph }
    association :circle_account
    after(:build) do |circle_post|
      image = create(:image)
      circle_post.circle_post_image || build(:circle_post_image, circle_post: circle_post, image: image)
    end
  end
end
