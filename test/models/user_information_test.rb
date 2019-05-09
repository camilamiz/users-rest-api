require 'test_helper'

class UserInformationTest < ActiveSupport::TestCase
  test "should not save user_information without email" do
    user_information = UserInformation.new
    assert_not user_information.save
  end

  test "should not save user_information without user_id" do
    user_information = UserInformation.new(name: "test", email: "test@test.com", document_number: "123775854940")
    assert_not user_information.save
  end

  test "should save user_information with name, email, document_number and user_id" do
    user = User.new(email: "user@email.com", password: "password123")
    user.save

    user_information = UserInformation.new(name: "test", email: "test@test.com", document_number: "123775854940", user_id: user.id)
    assert user_information.save
  end

end
