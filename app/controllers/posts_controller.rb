class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    redirect_back fallback_location: root_path unless @post.images.present?
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
   end

  private
  def post_params
    params.require(:post).permit(title, body, topic)
  end
end
