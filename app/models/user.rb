class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]
  has_many :ratings
  def name
    email.split('@').first.capitalize
  end
end
