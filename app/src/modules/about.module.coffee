'use strict'

angular.module 'huBEERt.about', ['ui.router']
.config ($stateProvider, $urlRouterProvider) ->

  $stateProvider
    # .state "places",
    #   url: "/search"
    #   views:
    #     "places-search":
    #       templateUrl: "src/modules/places/search/places.search.template.html"
    #       controller: 'PlacesSearchCtrl'
    #   parent: 'tab'

