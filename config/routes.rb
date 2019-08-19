Rails.application.routes.draw do
  get 'reviews/show'
  get 'reviews/index'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'
  get 'reviews/create'
  get 'reviews/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
