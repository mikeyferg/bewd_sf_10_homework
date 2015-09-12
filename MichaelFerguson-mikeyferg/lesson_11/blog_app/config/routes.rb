Rails.application.routes.draw do
  get 'profiles/show'


  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  root 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/password'
  }

  resources :blogs
  resources :profiles
  resources :users

end
