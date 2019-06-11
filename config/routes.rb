Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :update]
  root to: 'pages#home'
  resources :favorites_places, only: [:index, :destroy, :delete]

  resources :places, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :index]
    resources :favorites_places, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
