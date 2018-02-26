class PostsController < ApplicationController
  before_action :require_sign_in, only: [:new, :create]


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  end

end
