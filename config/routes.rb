Rails.application.routes.draw do
  
  resources :equipment
  resources :categories
  resources :comments
  resources :games
  resources :users_games
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
