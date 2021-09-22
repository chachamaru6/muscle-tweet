class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to request.referer
    else
      @comments = @post.comments
      redirect_to root_path
    end
  end


  

  private
  def comment_params
    params.require(:comment).permit(:text, :user_id, :post_id)
  end

end
