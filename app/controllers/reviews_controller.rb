class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to restaurants_path
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
