FactoryBot.define do
  factory :admin_user do
    email { "admin@test.com" }
    password { "admintest" }
  end
end
