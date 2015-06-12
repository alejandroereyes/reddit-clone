class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    # @user = User.find(params[:id])
    render json: params
  end

  private
  def post_params
    params.require(:user).permit(:name, :email)
  end
end
