
FactoryBot.define do
  factory :user_information do
    name { Faker::Company.name }
    email  { Faker::Internet.email }
    address { "#{Faker::Address.street_address}, #{Faker::Address.city}" }
    document_number { Faker::Code.ean }
    rating { rand(1..5) }
    association :user, factory: :user
  end
end
