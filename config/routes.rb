Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'arts#index'
  get '/', to: 'arts#index'
  get '/about', to: 'arts#about'
  get '/contact', to: 'arts#contact'
  get '/gallary', to: 'arts#gallary'
  get '/profile', to: 'profiles#index'
  post '/profile', to: 'profiles#create'
  get '/profile/new', to: 'profiles#new'
  get '/profile/:id', to: 'profiles#show'
end
