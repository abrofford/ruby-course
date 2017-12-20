Rails.application.routes.draw do
  # resources :restaurants

  get '/restaurants', to: 'restaurants#index'
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants/new', to: 'restaurants#create'
  get '/restaurants/:id', to: 'restaurants#show'
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
