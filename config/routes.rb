Rails.application.routes.draw do

  resources :equipment do
    resources :bookings, only: [:new, :index, :create, :update, :edit, :show]   
    resources :reviews, only: [:new, :index, :create, :show]
  end
  resources :bookings, only: [:destroy]
  resources :reviews, only: [:destroy]

  devise_for :users

  get '/profile', to: "pages#profile"

  resources :users, only: [:show] do
  end

  root to: 'equipment#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
