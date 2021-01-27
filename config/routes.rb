Rails.application.routes.draw do
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boards
  resources :comments, only: %i[create destroy]
end
