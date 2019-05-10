FactoryBot.define do
  factory :user do
    email { "user123@email.com" }
    password  { "password123" }
    password_confirmation { "password123" }
  end
end
