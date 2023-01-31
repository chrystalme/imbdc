class RatingsController < ApplicationController
before_action :authenticate_user!
  def create
    @movie = Movie.find(params[:movie_id])
    @rating = @movie.ratings.new(rating_params)
    @rating.user = current_user

    respond_to do |format|
      if @rating.save
        format.html {redirect_to @movie, notice: "Ratings created successfully."}
      else
        format.html{render 'movies/show'}
      end
    end
  end

  def ratings_param
    params.require(:rating).permit(:score)
  end
end
