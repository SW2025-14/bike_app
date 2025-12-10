def like
  @post = Post.find(params[:id])
  @post.increment!(:likes)   
  redirect_to posts_path
end  

def destroy
  @post.destroy
  redirect_to posts_path, notice: "投稿を削除しました"
end
