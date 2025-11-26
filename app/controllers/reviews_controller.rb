class ReviewsController < ApplicationController
  def create
    @bike = Bike.find(params[:bike_id])
    @review = @bike.reviews.build(review_params)

    if @review.save
      redirect_to @bike, notice: "レビューを投稿しました。"
    else
      @reviews = @bike.reviews.order(created_at: :desc)
      flash.now[:alert] = "レビューの投稿に失敗しました。"
      render "bikes/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:reviewer_name, :rating, :comment)
  end
end
