# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :movies

  validates :name, presence: true
end
