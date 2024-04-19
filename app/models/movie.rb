# frozen_string_literal: true

class Movie < ApplicationRecord
  # Add searchkick to movie model
  # searchkick
  # scope :ordered, -> { order(title: :asc) }
  belongs_to :category
  belongs_to :publisher, class_name: "User"
  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :user

  validates :title, presence: true
  validates :publisher, presence: true
  validates :text, length: { minimum: 10 }
  validates :publisher, presence: true
  validates :category, presence: true

  def self.ordered
    order(title: :asc)
  end

  # def self.ransackable_attributes(auth_object = nil)
  #   ["average_ratings", "category_id", "created_at", "id", "publisher_id", "text", "title", "updated_at"]
  # end
end
