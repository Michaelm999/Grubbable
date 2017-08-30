class RelationshipController < ApplicationController
  # Follows a user.
 def follow(other_user)
   following << other_user
 end

 # Unfollows a user.
 def unfollow(other_user)
   following.delete(other_user)
 end

 # Returns true if the current user is following the other user.
 def following?(other_user)
   following.include?(other_user)
 end

  def create
      user = User.find(params[:followed_id])
      current_user.follow(user)
      redirect_to user_path(@user)
    end

    def destroy
      user = Relationship.find(params[:id]).followed
      current_user.unfollow(user)
      redirect_to user_path(@user)
    end
end
