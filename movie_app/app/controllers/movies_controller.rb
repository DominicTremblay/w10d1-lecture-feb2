class MoviesController < ApplicationController
  def index
    @movies = Movie.order(title: :asc)
  end

  def new
  end

  def create
  end

  def show

    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
    @review = Review.new

  end
end
