class Api::V1::UserInformationsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_user_information, only: [:show, :update]

  def index
    @user_informations = UserInformation.all
  end

  def show
  end

  def create
    @user_information = UserInformation.new(user_information_params)
    @user_information.user = current_user
    if @user_information.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @user_information.update(user_information_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_user_information
    @user_information = UserInformation.find(params[:id])
  end

  def user_information_params
    params.require(:user_information).permit(:name, :email, :address, :document_number, :rating)
  end

  def render_error
    render json: { errors: @user_information.errors.full_messages },
      status: :unprocessable_entity
  end
end
