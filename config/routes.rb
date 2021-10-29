Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :lists, only: [:index, :show, :new, :create]
  resources :bookmarks, only: [:index, :new, :create]
  resources :bookmarks, only: :destroy
end
