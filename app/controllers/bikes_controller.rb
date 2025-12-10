class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
    @review = Review.new
    @reviews = @bike.reviews.order(created_at: :desc)
  end
end
