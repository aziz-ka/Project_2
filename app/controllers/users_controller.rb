class UsersController < ApplicationController

  def index
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
    @user = User.update(user_params)
  end

  def destroy
    User.delete(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end

