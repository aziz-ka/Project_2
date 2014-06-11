class UsersController < ApplicationController

  def index
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
    user = User.update(user_params)
    redirect_to user_path(user)
  end

  def destroy
    User.delete(params[:id])
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end

