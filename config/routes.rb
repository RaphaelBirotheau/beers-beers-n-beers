Rails.application.routes.draw do
  devise_for :user
  root to: 'pages#home'

  resources :aperos do
    resources :bookings, only: [:create]
  end


  get "/my_bookings", to: "bookings#my_bookings"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
