Rails.application.routes.draw do
  get '/profile', to: 'profiles#profile', as: 'profile'
  devise_for :users
  root to: 'pages#home'
  resources :cars do
    resources :bookings, only: [:new, :create, :show]
    resources :profiles, only: [:edit]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
