class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    # byebug
    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to '/posts'
  end


private

  def post_params
    params.require(:posts).permit(:title, :description)
  end

end
