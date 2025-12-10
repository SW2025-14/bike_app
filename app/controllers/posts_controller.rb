class PostsController < ApplicationController
<<<<<<< HEAD
  before_action :set_post, only: %i[show destroy like]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

=======
>>>>>>> 6260610588eec27fd6d0e557f060d198582d9f3f
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
  @post = Post.find(params[:id])
  @post.decrement!(:likes) if @post.likes > 0  
  redirect_to posts_path
  end

  
  def destroy
    @post.destroy
    redirect_to posts_path, notice: "投稿を削除しました"
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
<<<<<<< HEAD
    params.require(:post).permit(:name, :user_name, :gender, :comment, :photo)
=======
    params.require(:post).permit(:name, :image, :custom, :gender, :comment)
  end
  
  def index
    @posts = Post.all.order(created_at: :desc) # 新しい順に表示
>>>>>>> 6260610588eec27fd6d0e557f060d198582d9f3f
  end
end
