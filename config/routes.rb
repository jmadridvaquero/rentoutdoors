Rails.application.routes.draw do

  get 'review/new'
  get 'review/create'
  get 'review/edit'
  get 'review/update'
  get 'review/destroy'
  resources :equipment do
    resources :bookings, only: [:new, :index, :create]
  end
  resources :bookings, only: [:destroy]

  devise_for :users

  get '/profile', to: "pages#profile"

  resources :user, only: [:show] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  resources :reviews, only: [:destroy]

  root to: 'equipment#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
