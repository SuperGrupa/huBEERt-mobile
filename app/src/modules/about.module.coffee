'use strict'

angular.module 'huBEERt.about', ['ui.router']
.config ($stateProvider, $urlRouterProvider) ->

  $stateProvider
    .state "about",
      url: "/about"
      views:
        "about-tab":
          templateUrl: "src/modules/about/about.template.html"
      parent: 'tab'
