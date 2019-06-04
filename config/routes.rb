Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: 'pages#home'
  resources :activities, only: [:index, :show]
  resources :favorites_places, only: [:index]
  resources :places, only: [] do
    resources :reviews, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
