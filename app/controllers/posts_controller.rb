class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save!
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private

    def post_params
      params.require(:post).permit(:level, :category, :prob_image, :ans_image)
    end
end
