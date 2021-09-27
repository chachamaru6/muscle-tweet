class PostsController < ApplicationController
  before_action :move_to_index, except: [:index]
  before_action :set_post, only: [:show, :edit]

  def index
    @posts = Post.order('created_at DESC')
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

  def show
    @comment = Comment.new
    @comments = @post.comments
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def post_params
    params.require(:post).permit(:name, :explanation, :image, :muscle_id).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
