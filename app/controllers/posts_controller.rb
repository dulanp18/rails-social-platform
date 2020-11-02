class PostsController < ApplicationController
  skip_before_action :authenticate_user!


  def index
    @posts = Post.all
    @post = Post.new()
    @user = current_user
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :index
    end
  end

  def update
  end

  def destroy
  end


  private

  def post_params
    params.require(:post).permit(:body)
  end


end
