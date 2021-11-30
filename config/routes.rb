Rails.application.routes.draw do
  resources :tags, only: [:index, :show]
  resources :posts, only: [:index, :show] do
    resources :tags, only: [:index, :show]
  end
  resources :authors, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
end
