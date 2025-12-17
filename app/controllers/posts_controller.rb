class PostsController < ApplicationController
  before_action :set_post, only: %i[show destroy like unlike]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.likes = 0
    if @post.save
      redirect_to posts_path, notice: "投稿しました"
    else
      render :new
    end
  end

  def like
    @post.increment!(:likes)
    redirect_to posts_path
  end

  def unlike
    @post.decrement!(:likes) if @post.likes > 0
    redirect_to posts_path
  end


  def destroy
    @post.photo.purge if @post.photo.attached?
    @post.destroy
    redirect_to posts_path, notice: "投稿を削除しました"
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :user_name, :photo, :gender, :comment)
  end

end
