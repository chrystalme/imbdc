# frozen_string_literal: true

class AddUniqueConstraintToRatings < ActiveRecord::Migration[7.0]
  def change
    add_index :ratings, %i[user_id movie_id], unique: true
  end
end
