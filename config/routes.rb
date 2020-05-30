Rails.application.routes.draw do


  resources :users do
    member do
      get :confirm_email
    end
  end
  resources :sessions, only: :create
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root 'home#index'
  match 'auth/:provider/callback', to: 'sessions#createtwitter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
