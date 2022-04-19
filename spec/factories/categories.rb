FactoryBot.define do
  factory :category do
    name  { Faker::Game.title }
  end
end
