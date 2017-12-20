Rails.application.routes.draw do
  resources :renters
  resources :comments, only: [:create]
end
