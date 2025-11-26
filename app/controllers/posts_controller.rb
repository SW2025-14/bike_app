class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:name, :image, :custom, :gender, :comment)
  end
  
  def index
    @posts = Post.all.order(created_at: :desc) # 新しい順に表示
  end
end
