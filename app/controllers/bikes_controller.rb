class BikesController < ApplicationController
  def index
    @bikes = Bike.all
    @posts = Post.all.order(created_at: :desc)  # ← これを追加

  end

  def show
    @bike = Bike.find(params[:id])
    @review = Review.new
    @reviews = @bike.reviews.order(created_at: :desc)
  end
end
