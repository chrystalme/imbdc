# frozen_string_literal: true

class AddUserToRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :user, null: false, foreign_key: true
  end
end
