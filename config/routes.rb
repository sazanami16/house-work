Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "works#index"
  resources :works, only: [:index]
  resources :reports, only: [:create]
  resources :nices, only: [:create, :destroy]
  resources :bads, only: [:create, :destroy]
end
