FactoryBot.define do
  factory :circle do
    name { Faker::University.name }
    description { Faker::Lorem.paragraph(sentence_count: 4) }
    active_place { Faker::Currency.name }
    number_of_people { Faker::Number.within(range: 1..100) }
    link { Faker::Internet.url }

    after(:build) do |circle|
      circle.circle_time || build(:circle_time, circle: circle)
      %w[月 火 水 木 金 土 日].each do |n| 
        day_of_week = DayOfWeek.find_by(day_name: n)
        circle.circle_days << build(:circle_day, circle: circle, day_of_week: day_of_week)
      end
      image = create(:image)
      circle.circle_image || build(:circle_image, circle: circle, image: image)
    end
  end
end
