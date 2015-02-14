class UsersController < ApplicationController

  after_filter :cors_set_access_control_headers

  # def index

  # end

  def create
    # new user registration with facebook auth
  end

  def show
    @user = User.find(params[:id])
  end

  # def edit
  #   # edit profile
  # end

  # def update

  # end

  # def destroy

  # end

private

  def users_params
    params.require(:user).permit(:name, :city, :state, :picture, :age)
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

end