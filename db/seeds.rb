require 'faker'

puts 'Creating 20 fake user information...'
20.times do
   user_information = UserInformation.new(
    name:    Faker::Company.name,
    email:   Faker::Internet.email,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    document_number: Faker::Code.ean,
    rating: rand(1..5)
  )
  user_information.save!
end
puts 'Finished!'

