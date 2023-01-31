class Movie < ApplicationRecord
  # self.per_page = 5
  # has_many :ratings
   CATEGORIES = %w(Action Comedy Drama Fantasy Horror Romance Thriller).freeze
  # validates :category, inclusion: {in: CATEGORIES}
end
