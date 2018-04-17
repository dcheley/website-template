Rails.application.routes.draw do
  root to: 'businesses#index'
  devise_for :businesses

  resources :businesses, only: [:index]
end
