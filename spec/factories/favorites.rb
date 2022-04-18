FactoryBot.define do
  factory :favorite do
    association :user
    association :circle 
  end
end
