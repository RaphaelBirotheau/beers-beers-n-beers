class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @apero = Apero.find(params[:apero_id])
    @review.apero = @apero
    if @review.save!
      redirect_to apero_path(@apero)
    else
      flash[:alert] = "Not saved"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
