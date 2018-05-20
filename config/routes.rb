Rails.application.routes.draw do
  # resources :cheeses
  get '/cheeses', to: 'cheeses#index'
  post '/cheeses', to: 'cheeses#create'
  get '/cheeses/new', to: 'cheeses#new'
  get '/cheeses/:id', to: 'cheeses#show', as: 'cheese'
end
