# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :text
      t.float :ratings, default: 0.0
      t.integer :category

      t.timestamps
    end
  end
end
