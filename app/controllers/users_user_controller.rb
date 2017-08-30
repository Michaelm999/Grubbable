class UsersUserController < ApplicationController
  def create
    @user = User.find(params[:id])
    current_user.users << @user
    redirect_to user_path(current_user)
  end
  def destroy
    @user = User.find(params[:id])
    current_user.users.delete(@user)
    redirect_to user_path(current_user)
  end
end
