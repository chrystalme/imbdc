# frozen_string_literal: true

class RemoveColumnCategoryFromMovie < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :category
  end
end
