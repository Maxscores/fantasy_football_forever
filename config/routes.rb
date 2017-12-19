Rails.application.routes.draw do
  root 'welcome#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :fantasy_teams, only: [:index, :show]
  resources :players, only: [:index, :show] do
    resources :user_favorites, only: [:create, :destroy]
    resources :season_stats
  end
  resources :users, only: [:show, :new, :create]
  namespace :admin do
    resources :dashboard, only: [:index]
    resources :players, only: [:new, :edit, :create, :update, :destroy]
    resources :fantasy_teams, only: [:new, :edit, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
