Rails.application.routes.draw do
  root 'welcome#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/fantasy_teams', to: 'admin/fantasy_teams#create'
  delete '/fantasy_teams/:id', to: 'admin/fantasy_teams#destroy'
  patch '/fantasy_teams/:id', to: 'admin/fantasy_teams#update'

  post '/players', to: 'admin/players#create'
  delete '/players/:id', to: 'admin/players#destroy'
  patch '/players/:id', to: 'admin/players#update'

  resources :fantasy_teams, only: [:index, :show]
  resources :players, only: [:index, :show] do
    resources :user_favorites, only: [:create, :destroy]
    resources :season_stats
  end
  resources :users, only: [:show, :new, :create]
  namespace :admin do
    resources :dashboard, only: [:index]
    resources :players, only: [:new, :edit]
    resources :fantasy_teams, only: [:new, :edit,]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
