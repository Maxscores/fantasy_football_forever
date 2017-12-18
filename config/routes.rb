Rails.application.routes.draw do
  root 'welcome#index'
  resources :fantasy_teams
  resources :players do
    resources :season_stats
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
