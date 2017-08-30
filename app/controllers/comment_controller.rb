class CommentController < ApplicationController

    def new
      @comment = Comment.new
    end

    def create
      @user = User.find(params[:id])
      @comment = @user.comments.create(comment_params)
      @comment.username = current_user.name
      @comment.save
      redirect_to user_path @user
    end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_path @user
  end

    private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
