Rails.application.routes.draw do
  resources :welcome
  resources :restaurants

  get '/welcome/index', to: 'welcome#index'
  get '/restaurants', to: 'restaurants#index'
  post '/restaurants', to: 'restaurants#create'
  # get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get '/restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch '/restaurants/:id', to: 'restaurants#update'
  put '/restaurants/:id', to: 'restaurants#update'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
