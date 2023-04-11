# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable#, :confirmable, :lockable, :timeoutable, :trackable, :omniauthable, omniauth_providers: [:facebook]

  has_many :ratings, dependent: :destroy
  has_many :published_movies, class_name: "Movie", foreign_key: "publisher_id"
  has_many :rated_movies, through: :ratings, source: :movie
  def name
    email.split("@").first.capitalize
  end

  def is_admin?
    admin == true
  end 
end
