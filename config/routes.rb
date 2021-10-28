Rails.application.routes.draw do

  get 'historique/index'
  resources :payments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 root "hospitals#index"
  get "historique", to: "historique#index"
  devise_for :users

  resources :hospitals
  resources :comments, only: [:create]
  resources :prestations
  resources :users, only: [:show]
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users#new_guest'
    post 'users/guest_admin_sign_in', to: 'users#new_admin_guest'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
