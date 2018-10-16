class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save!
      redirect_to root_path
    else
      redirect_back fallback_location: root
    end
  end

  private
  def review_params
    params.require(:review).permit(:recipient, :body)
  end

end
