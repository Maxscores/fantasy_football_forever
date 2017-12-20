# README

User Stories:

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
