class PostsController < ApplicationController
  before_action :require_sign_in, only: [:new, :create]


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'posts/index'
    end
  end

  private

    def post_params
      params.require(:post).permit(:body)
    end

end
