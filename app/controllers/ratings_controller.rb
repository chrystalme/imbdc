# frozen_string_literal: true

class RatingsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_movie

  def create
    @rating = @movie.ratings.find_or_initialize_by(user: current_user)
    @rating.update(ratings_params)

    respond_to do |format|
      notice = if @rating.save
                 'Ratings created successfully.'
               else
                 'Only registered users can rate movies'
               end
      format.html { redirect_to @movie, notice: }
      format.turbo_stream { flash.now[:notice] = notice }
    end
  end

  private

  def ratings_params
    params.require(:rating).permit(:score)
  end

  def find_movie
    @movie = Movie.find(params[:movie_id])
  end

  def set_rating
    @rating = Rating.find(params[:id])
  end
end
