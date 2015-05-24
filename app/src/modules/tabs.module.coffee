'use strict'

angular.module 'huBEERt.tabs', ['ui.router']
.config ($stateProvider, $urlRouterProvider) ->

  $stateProvider
    .state "tab",
      url: "/tab"
      abstract: true
      templateUrl: "src/modules/tabs/tabs.template.html"

