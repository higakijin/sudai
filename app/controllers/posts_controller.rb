class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def favo
    @likes = Like.where(user_id: current_user).order(id: "DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  private

    def post_params
      params.require(:post).permit(:level, :category, :prob_image, :ans_image)
    end
end
