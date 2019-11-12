Rails.application.routes.draw do
  devise_for :users

  # resources :tiny_houses
  root to: 'pages#home'

  resources :tiny_houses
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
