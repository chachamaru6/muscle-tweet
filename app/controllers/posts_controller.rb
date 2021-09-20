class PostsController < ApplicationController
  before_action :move_to_index, except: [:index]
  
  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def post_params
    params.require(:post).permit(:name, :explanation, :image, :muscle_id).merge(user_id: current_user.id)
  end

  
end
