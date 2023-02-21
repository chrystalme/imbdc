# frozen_string_literal: true

class Movie < ApplicationRecord
  scope :ordered, -> { order(title: :asc) }
  belongs_to :category
  belongs_to :publisher, class_name: "User"
  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :user

  validates :title, presence: true
  validates :publisher, presence: true
  validates :text, length: { minimum: 10 }
  validates :publisher, presence: true
  validates :category, presence: true

  # after_save :movie_counter_update

  private 
  # def movie_counter_update
  #   publisher.increment!(:movie_counter)
  # end
end
