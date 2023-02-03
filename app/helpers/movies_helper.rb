# frozen_string_literal: true

module MoviesHelper
  def user_rating_for(movie)
    current_user.ratings.where(movie_id: movie.id).pluck(:score).join.to_i
  end
end
