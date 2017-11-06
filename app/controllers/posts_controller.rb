class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    #code
  end

end
