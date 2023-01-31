class RatingsController < ApplicationController

  def create
    @movie = Movie.find(params[:movie_id])
    @rating = @movie.ratings.new(rating_params)
    @rating.user = current_user
  end
end
