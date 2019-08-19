class ReviewsController < ApplicationController
  def index
      @reviews = Review.all
    end

    def show
      @review = Review.find(params[:id])
    end

    def new
      @review = Review.new
    end

    def create
      @review = Review.new(dose_params)
      @review.save
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
    end

      def dose_params
      params.require(:review).permit(:content, :rating)
    end
end
