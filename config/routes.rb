Rails.application.routes.draw do
  resources :users

  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get '/signup', to: 'users#new'
end
