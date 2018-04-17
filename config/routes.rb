Rails.application.routes.draw do
  root "pages#show", page: "home"
  get "/pages/*page" => "pages#show"

  devise_for :businesses
  resources :businesses, only: [:index]
end
