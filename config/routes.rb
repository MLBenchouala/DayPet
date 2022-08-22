Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pets, only: [:create, :new, :index, :show, :destroy]
  resources :bookings, only: [:new, :create, :index, :show]
  resources :pets do
    resources :ratings, only: [:new, :create, :index, :show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
