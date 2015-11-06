class CommentController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to :back
  end
  def comment_params
    params.require(:comment).permit(:content, :recipe_id).merge(user_id: current_user.id)
  end

end
