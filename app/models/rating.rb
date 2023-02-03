# frozen_string_literal: true

class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :score, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  after_save :update_movie_rating

  def self.average
    average(:score)
  end

  private

  def update_movie_rating
    movie.update(average_ratings: movie.ratings.average(:score))
  end
end
