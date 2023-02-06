# frozen_string_literal: true

Rails.application.routes.draw do
  root 'movies#index'
  devise_for :users
  resources :movies do
    resources :ratings, only: %w[create new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
