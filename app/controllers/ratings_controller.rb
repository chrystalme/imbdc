class RatingsController < ApplicationController
before_action :authenticate_user!
before_action :find_movie


  def create#_or_update_rating   
    @rating = @movie.ratings.build(ratings_params)
    @rating.user = current_user

    respond_to do |format|
      if @rating.present?
        @rating.update(ratings_params)
        format.html {redirect_to @movie, notice: "Ratings created successfully."}
        format.turbo_stream
      elsif @rating.save
        format.html {redirect_to @movie, notice: "Ratings created successfully."}
        format.turbo_stream
      else
        format.html{render 'movies/show', notice: "Only registered users can rate movies"}
      end
    end
  end

  private

  def ratings_params
    params.require(:rating).permit(:score)
  end

  def find_movie
     @movie = Movie.find(params[:movie_id])
  end
end
