class PostsController < ApplicationController
  # 投稿一覧
  def index
    @posts = Post.all
  end

  # 新規投稿フォーム
  def new
    @post = Post.new
  end

  # 投稿作成
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "投稿が作成されました"
    else
      render :new
    end
  end

  # 投稿詳細
  def show
    @post = Post.find(params[:id])
  end

  private

  # Strong Parameters
  def post_params
    params.require(:post).permit(:name, :photo, :custom, :gender, :comment)
  end
end
