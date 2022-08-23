Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :show]
  resources :pets do
    resources :bookings, only: [:new, :create]
  end
  resources :ratings
  get "dashoard", to: 'pages#dashboard'
  get "contact", to: 'pages#contact'
end
