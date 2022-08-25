Rails.application.routes.draw do
  resources :flats
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :bookings, only: [:new, :create, :index, :show]
  end
  resources :bookings do
    member do
      patch :accept
      patch :decline
    end
  end
  resources :ratings
  get "dashboard", to: 'pages#dashboard'
  get "contact", to: 'pages#contact'
end
