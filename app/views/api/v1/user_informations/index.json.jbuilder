json.array! @user_informations do |user_information|
  json.extract! user_information, :id, :name, :email, :address
end
