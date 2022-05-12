Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root 'home#index'
  resources :films, only: [:index, :show]
  get '/errors/:id', '/errors', to: 'errors#show'
end
