Rails.application.routes.draw do
  
  resources :equipments do
    resources :bookings, only: [:new, :index, :create]
  end
    resources :bookings, only: [:destroy]

  devise_for :users
  
  root to: 'equipments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
