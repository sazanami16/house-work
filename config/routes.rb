Rails.application.routes.draw do
  get 'items/new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :works do
    resources :items
  end
  
  root to: "works#index"
  resources :works, only: [:index]
  resources :reports, only: [:create]
  resources :nices, only: [:create, :destroy]
  resources :bads, only: [:create, :destroy]

end
