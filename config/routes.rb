Rails.application.routes.draw do
  root 'welcome#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :fantasy_teams
  resources :players do
    resources :season_stats
  end
  resources :users, only: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
