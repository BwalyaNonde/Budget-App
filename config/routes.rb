Rails.application.routes.draw do
  devise_for :users
  unauthenticated :user do
    root to: 'users#index'
  end

  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end

  resources :groups
  resources :expenses
end
