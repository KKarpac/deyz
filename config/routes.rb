Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events do
    resources :attendees, only: [:show, :create]
    resources :moments, only: [:create, :update, :destroy]
    resources :playlists, only: [:show, :create, :destroy]
  end
  resources :moments, only: [:index]
  resources :profiles, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [] do
    resources :friendships, only: :create
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
