Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:new, :create, :index, :show]
  resources :pets, only: [:create, :new, :index, :show, :destroy] do
    resources :ratings, only: [:index, :show]
  end
end
