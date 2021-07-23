Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login/' => 'sessions#create'
  delete '/logout/' => 'sessions#destroy'
  get '/me/' => 'users#show'
end
