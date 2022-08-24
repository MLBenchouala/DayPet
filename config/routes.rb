Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:new, :create, :index, :show]
  resources :pets
  resources :bookings do
    resources :ratings, only: [:new, :create]
  end
  resources :pets do
    resources :ratings, only: [:index, :show]
  end
end
