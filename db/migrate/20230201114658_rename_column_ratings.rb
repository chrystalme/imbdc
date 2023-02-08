# frozen_string_literal: true

class RenameColumnRatings < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :ratings, :average_ratings
  end
end
