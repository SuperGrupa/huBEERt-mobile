'use strict'

angular.module 'huBEERt.places', ['ui.router']
.config ($stateProvider, $urlRouterProvider) ->

  $stateProvider
    .state "placesSearch",
      url: "/search"
      views:
        "places-search":
          templateUrl: "src/modules/places/search/places.search.template.html"
          controller: 'PlacesSearchCtrl'
      parent: 'tab'

    .state "placesSearchResults",
      url: "/search/results"
      views:
        "places-search":
          templateUrl: "src/modules/places/search/results/places.results.template.html"
          controller: "PlacesResultsCtrl"
      parent: 'tab'

    .state "placesShow",
      url: "/places/:id"
      views:
        "places-search":
          templateUrl: "src/modules/places/show/places.show.template.html"
          controller: 'PlacesShowCtrl'
      parent: 'tab'

    .state "placesFavourites",
      url: "/favourites"
      views:
        "places-favourites":
          templateUrl: "src/modules/places/favourites/places.favourites.template.html"
          controller: "PlacesFavouritesCtrl"
      parent: 'tab'
