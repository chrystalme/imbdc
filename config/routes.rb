Rails.application.routes.draw do
  root 'movies#index'
  devise_for :users
  resources :movies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
