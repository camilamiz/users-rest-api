FactoryBot.define do
  factory :user_information do
    name { "Company" }
    email  { "company@email.com" }
    address { "street 123" }
    document_number { "12345888222" }
    rating { "4" }
    user_id { user.id }
  end
end
