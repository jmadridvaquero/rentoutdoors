Rails.application.routes.draw do

  resources :equipment do
    resources :bookings, only: [:new, :index, :create]
  end
    resources :bookings, only: [:destroy]

  devise_for :users

  get '/profile', to: "pages#profile"

  root to: 'equipment#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
