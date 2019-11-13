Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :tiny_houses do
    collection do
      get :mine
      get :my_rents
    end
    resources :rents, only: [:new, :create]
  end
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
