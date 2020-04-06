class ReviewsController < ApplicationController
  def create


    @movie = Movie.find(params[:movie_id])

    
    review = @movie.reviews.new(review_params)
    
    byebug
    if (review.save)
      redirect_to @movie

    else
      redirect_to @movie      
      flash[:errors] = review.errors
    end

  end

  def destroy
  end


  private

  def review_params
    params.require(:review).permit(
      :rating,
      :comment
    )
  end

end
