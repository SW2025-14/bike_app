class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post), notice: "コメントを投稿しました。"
    else
      redirect_to post_path(@post), alert: "コメントを投稿できませんでした。"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_name, :content)
  end
end
