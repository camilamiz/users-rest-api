require 'rails_helper'

RSpec.describe 'UserInformationsController', type: :request do

  describe "GET /api/v1/user_informations" do
    before { get '/api/v1/user_informations' } 

#    it "returns all user_information" do
#      user = User.new(email: "email@name.com", password: "password123", password_confirmation: "password123" )
#      user.save

#      user_information1 = UserInformation.new(name: "Test Company", address: "123 St", document_number: "88882262365", user_id: user.id )
#      user_information1.save

#      user_information2 = UserInformation.new(name: "Test Company2", address: "1232 St", document_number: "8882282262365", user_id: user.id )
#      user_information2.save
#      expect(json).not_to be_empty
#      expect(json.size).to eq(2)
#    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/v1/user_informations/" do
    let!(:user) { FactoryBot.create(:user) }
    let!(:user_information) { FactoryBot.create(:user_information) }

    before { get "/api/v1/user_informations/#{user_information.id}" }

    context 'when user is logged in' do
      it 'returns status code 200' do
        user.reset_authentication_token! unless user.authentication_token
        expect(response).to have_http_status(200)
      end
    end

     context 'when user is not logged in' do
      it 'returns an error message' do
        expect(response).to have_http_status(401)
      end
    end

  end
end
