class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.active_id = params[:active_id]
  
    @comment.save
  
    redirect_to active_path(@comment.active)
  end
  
  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
