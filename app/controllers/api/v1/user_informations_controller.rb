class Api::V1::UserInformationsController < Api::V1::BaseController
  def index
    @user_informations = policy_scope(UserInformation)
  end
end
