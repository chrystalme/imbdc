# frozen_string_literal: true

class Movie < ApplicationRecord
  # include PgSearch::Model
  scope :ordered, -> { order(title: :asc) }
  belongs_to :category
  belongs_to :publisher, class_name: "User"
  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :user

  validates :title, presence: true
  validates :publisher, presence: true
  validates :text, length: { minimum: 10 }
  validates :category, presence: true

  # pg_search_scope :search_by_title,
  #   against: [ :title ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

    scope :category, -> (category_id) { where(category_id: category_id) }
  #   # scope :category, -> (category) { send(category) if category.present? }
  #   scope :search , ->(value) { search_by_title(value) if value.present? }
  # scope :search, -> (value) { where("title ILIKE ?", "%#{value}%") }
  # def search(value)
  #   where("title ILIKE ? OR text ILIKE ?", "%#{value}%", "%#{value}%")
  # end
end
