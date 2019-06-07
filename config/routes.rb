Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :update]
  root to: 'pages#home'
  resources :favorites_places, only: [:index]
  resources :places, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
