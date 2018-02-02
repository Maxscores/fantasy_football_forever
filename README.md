# README

View the app here: https://fantasy-football-forever.herokuapp.com/

Personal Project for Turing BE Module 2, markdown for assignment: http://backend.turing.io/module2/projects/mini-project
Goal was to build an app based around fantasy football that a user can create a profile and favorite players. It utilizes a Postgres Database with one-to-many and many-to-many relationships. The data for the site was seeded from an API. The player season data was generated to fit a normal distribution that was built using a method similar to the method I wrote about here: https://hackernoon.com/weve-all-been-there-adedc9e82b42

## Testing
The app is tested using RSpec. To run the tests you will need to perform some basic setup:
```
git clone https://github.com/Maxscores/fantasy_tracker.git
cd fantasy_tracker
bundle
rails db:create db:migrate
bundle exec rspec
```

# User Stories:

## Player
* [x] player index page shows all players
* [x] players can be added by Admin
* [x] players can be deleted by Admin
* [x] players can be edited by Admin
* [x] Players can be favorited/unfavorited by Logged in Users
* [x] Player show page shows their player bio
  * [ ] Player show page shows their current stats via API
    - didn't find free api with this info, data is loaded during seeding
  * [x] Player show page gives their current social media opinion
    - uses dummy twitter handles
* [x] Player show page shows which FF team they're on
* [x] Players belong to one FF team
* [x] Players have many FF users that have favorited them
* [x] Visitors can see players sorted by team

## FF Teams
* [x] Admin creates/deletes teams
* [x] Admin assigns players to teams
* [x] Visitors/Logged in Users can view teams
* [x] Team show lists all players on that team
* [x] Team index shows all teams

## Favorites
* [x] Logged in users can favorite/unfavorite players
* [x] Logged in users can view a list of their favorited players - "My Favorites"
* [x] Logged in users can see favorites sorted by team

## Authentication and Authorization
* [x] Users need to login to see their favorites
* [x] Users can only see their favorites
* [x] Users cannot create favs for other users
* [x] Users cannot create new teams
* [x] Users cannot create new players
* [x] Visitors can create user accounts

## Other Features to Add
* [x] Adding favorites stays on same paginated page
* [x] Add filter-by-team (drop down)
* [x] Add filter-by-position (drop down)
* [x] Add sort-by name (drop down)
* [x] Can use all filters and they carry over when favoriting
* [x] Add team to favorites(adds all players from team)
* [x] Calculate fantasy score from stats
* [x] Add player season score to index - makes things slow
