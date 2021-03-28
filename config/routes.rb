Rails.application.routes.draw do
  get 'items/new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "works#index"
  
  resources :works do
    resources :items
    resources :reports, only: [:create]
  end

  resources :reports, only: [:create] do 
    resources :nices, only: [:create, :destroy]
    resources :bads, only: [:create, :destroy]
  end
  
end
