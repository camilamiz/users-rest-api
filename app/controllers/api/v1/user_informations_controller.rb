class Api::V1::UserInformationsController < Api::V1::BaseController
  before_action :set_user_information, only: [:show]

  def index
    @user_informations = UserInformation.all
  end

  def show
  end

  private

  def set_user_information
    @user_information = UserInformation.find(params[:id])
  end
end
