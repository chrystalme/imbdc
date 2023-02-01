class Rating < ApplicationRecord
  belongs_to :movie
  

  validates :score, presence: true, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 10}

  after_update :update_movie_rating

  private
  def update_movie_rating
    movie.update(ratings: movie.ratings.avarage(:score))
  end
end
