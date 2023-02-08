# frozen_string_literal: true

class AddPublisherToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :publisher_id, :integer
  end
end
