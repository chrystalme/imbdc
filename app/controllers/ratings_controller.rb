# frozen_string_literal: true

class RatingsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_movie

  def new; end

  def create
    @rating = @movie.ratings.find_or_initialize_by(user: current_user)
    
    @rating.update(ratings_params)

    respond_to do |format|
      if @rating.save
        format.html { redirect_to movies_path, notice: 'Ratings created successfully.' }
        format.turbo_stream { flash.now[:notice] = 'Ratings created successfully.' }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream { render :new, status: :unprocessable_entity }
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

  def set_rating
    @rating = Rating.find(params[:id])
  end
end
