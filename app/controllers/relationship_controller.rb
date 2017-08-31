class RelationshipController < ApplicationController
  def create
    @user = User.find(params[:id])
    if current_user.follow @user.id
      respond_to do |format|
        format.html { redirect_to user_path(current_user) }
         format.js
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user.unfollow @user.id
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
         format.js
    end
    end
  end
end
